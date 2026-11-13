package com.sun.mail.util;

import M.d0;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintStream;
import java.lang.reflect.InvocationTargetException;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.nio.channels.SocketChannel;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.AccessController;
import java.security.GeneralSecurityException;
import java.security.PrivilegedAction;
import java.security.cert.Certificate;
import java.security.cert.CertificateParsingException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Properties;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.SocketFactory;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class SocketFetcher {
    private static MailLogger logger = new MailLogger(SocketFetcher.class, "socket", "DEBUG SocketFetcher", PropUtil.getBooleanSystemProperty("mail.socket.debug", false), System.out);

    private SocketFetcher() {
    }

    private static void checkServerIdentity(String str, SSLSocket sSLSocket) throws IOException {
        try {
            Certificate[] peerCertificates = sSLSocket.getSession().getPeerCertificates();
            if (peerCertificates != null && peerCertificates.length > 0) {
                Certificate certificate = peerCertificates[0];
                if ((certificate instanceof X509Certificate) && matchCert(str, (X509Certificate) certificate)) {
                    return;
                }
            }
            sSLSocket.close();
            throw new IOException(d0.e("Can't verify identity of server: ", str));
        } catch (SSLPeerUnverifiedException e2) {
            sSLSocket.close();
            IOException iOException = new IOException(d0.e("Can't verify identity of server: ", str));
            iOException.initCause(e2);
            throw iOException;
        }
    }

    private static IOException cleanupAndThrow(Socket socket, IOException iOException) {
        try {
            socket.close();
        } catch (Throwable th) {
            if (!isRecoverable(th)) {
                th.addSuppressed(iOException);
                if (th instanceof Error) {
                    throw ((Error) th);
                }
                if (th instanceof RuntimeException) {
                    throw ((RuntimeException) th);
                }
                throw new RuntimeException("unexpected exception", th);
            }
            iOException.addSuppressed(th);
        }
        return iOException;
    }

    private static void configureSSLSocket(Socket socket, String str, Properties properties, String str2, SocketFactory socketFactory) throws IOException {
        if (socket instanceof SSLSocket) {
            SSLSocket sSLSocket = (SSLSocket) socket;
            String property = properties.getProperty(str2 + ".ssl.protocols", null);
            if (property != null) {
                sSLSocket.setEnabledProtocols(stringArray(property));
            } else {
                String[] enabledProtocols = sSLSocket.getEnabledProtocols();
                if (logger.isLoggable(Level.FINER)) {
                    logger.finer("SSL enabled protocols before " + Arrays.asList(enabledProtocols));
                }
                ArrayList arrayList = new ArrayList();
                for (int i2 = 0; i2 < enabledProtocols.length; i2++) {
                    String str3 = enabledProtocols[i2];
                    if (str3 != null && !str3.startsWith("SSL")) {
                        arrayList.add(enabledProtocols[i2]);
                    }
                }
                sSLSocket.setEnabledProtocols((String[]) arrayList.toArray(new String[arrayList.size()]));
            }
            String property2 = properties.getProperty(str2 + ".ssl.ciphersuites", null);
            if (property2 != null) {
                sSLSocket.setEnabledCipherSuites(stringArray(property2));
            }
            if (logger.isLoggable(Level.FINER)) {
                logger.finer("SSL enabled protocols after " + Arrays.asList(sSLSocket.getEnabledProtocols()));
                logger.finer("SSL enabled ciphers after " + Arrays.asList(sSLSocket.getEnabledCipherSuites()));
            }
            sSLSocket.startHandshake();
            if (PropUtil.getBooleanProperty(properties, str2 + ".ssl.checkserveridentity", false)) {
                checkServerIdentity(str, sSLSocket);
            }
            if ((socketFactory instanceof MailSSLSocketFactory) && !((MailSSLSocketFactory) socketFactory).isServerTrusted(str, sSLSocket)) {
                throw cleanupAndThrow(sSLSocket, new IOException(d0.e("Server is not trusted: ", str)));
            }
        }
    }

    private static Socket createSocket(InetAddress inetAddress, int i2, String str, int i3, int i4, int i5, Properties properties, String str2, SocketFactory socketFactory, boolean z2) throws IOException {
        String property;
        String str3;
        int intProperty;
        String str4;
        Socket socket;
        Socket socketCreateSocket;
        String str5;
        SSLSocketFactory sSLSocketFactory;
        String str6;
        SocketFactory socketFactory2 = socketFactory;
        if (logger.isLoggable(Level.FINEST)) {
            logger.finest("create socket: prefix " + str2 + ", localaddr " + inetAddress + ", localport " + i2 + ", host " + str + ", port " + i3 + ", connection timeout " + i4 + ", timeout " + i5 + ", socket factory " + socketFactory2 + ", useSSL " + z2);
        }
        String property2 = properties.getProperty(str2 + ".proxy.host", null);
        String property3 = properties.getProperty(str2 + ".proxy.user", null);
        String property4 = properties.getProperty(str2 + ".proxy.password", null);
        int i6 = 80;
        int i7 = 1080;
        if (property2 != null) {
            int iIndexOf = property2.indexOf(58);
            if (iIndexOf >= 0) {
                try {
                    i6 = Integer.parseInt(property2.substring(iIndexOf + 1));
                } catch (NumberFormatException unused) {
                }
                property2 = property2.substring(0, iIndexOf);
            }
            int intProperty2 = PropUtil.getIntProperty(properties, str2 + ".proxy.port", i6);
            String str7 = "Using web proxy host, port: " + property2 + ", " + intProperty2;
            if (logger.isLoggable(Level.FINER)) {
                str6 = str7;
                logger.finer("web proxy host " + property2 + ", port " + intProperty2);
                if (property3 != null) {
                    MailLogger mailLogger = logger;
                    StringBuilder sbJ = d0.j("web proxy user ", property3, ", password ");
                    sbJ.append(property4 == null ? "<null>" : "<non-null>");
                    mailLogger.finer(sbJ.toString());
                }
            } else {
                str6 = str7;
            }
            i6 = intProperty2;
            property = null;
            String str8 = str6;
            str3 = property2;
            intProperty = 1080;
            str4 = str8;
        } else {
            property = properties.getProperty(str2 + ".socks.host", null);
            if (property != null) {
                int iIndexOf2 = property.indexOf(58);
                if (iIndexOf2 >= 0) {
                    try {
                        i7 = Integer.parseInt(property.substring(iIndexOf2 + 1));
                    } catch (NumberFormatException unused2) {
                    }
                    property = property.substring(0, iIndexOf2);
                }
                StringBuilder sb = new StringBuilder();
                sb.append(str2);
                str3 = property2;
                sb.append(".socks.port");
                intProperty = PropUtil.getIntProperty(properties, sb.toString(), i7);
                String str9 = "Using SOCKS host, port: " + property + ", " + intProperty;
                if (logger.isLoggable(Level.FINER)) {
                    str4 = str9;
                    logger.finer("socks host " + property + ", port " + intProperty);
                } else {
                    str4 = str9;
                }
            } else {
                str3 = property2;
                intProperty = 1080;
                str4 = null;
            }
        }
        Socket socketCreateSocket2 = (socketFactory2 == null || (socketFactory2 instanceof SSLSocketFactory)) ? null : socketFactory.createSocket();
        if (socketCreateSocket2 != null) {
            socket = socketCreateSocket2;
        } else if (property != null) {
            socket = new Socket(new Proxy(Proxy.Type.SOCKS, new InetSocketAddress(property, intProperty)));
        } else {
            if (PropUtil.getBooleanProperty(properties, str2 + ".usesocketchannels", false)) {
                logger.finer("using SocketChannels");
                socketCreateSocket2 = SocketChannel.open().socket();
            } else {
                socketCreateSocket2 = new Socket();
            }
            socket = socketCreateSocket2;
        }
        if (i5 >= 0) {
            if (logger.isLoggable(Level.FINEST)) {
                logger.finest("set socket read timeout " + i5);
            }
            socket.setSoTimeout(i5);
        }
        int intProperty3 = PropUtil.getIntProperty(properties, str2 + ".writetimeout", -1);
        if (intProperty3 != -1) {
            if (logger.isLoggable(Level.FINEST)) {
                logger.finest("set socket write timeout " + intProperty3);
            }
            socketCreateSocket = new WriteTimeoutSocket(socket, intProperty3);
        } else {
            socketCreateSocket = socket;
        }
        if (inetAddress != null) {
            socketCreateSocket.bind(new InetSocketAddress(inetAddress, i2));
        }
        try {
            logger.finest("connecting...");
            try {
                if (str3 != null) {
                    proxyConnect(socketCreateSocket, str3, i6, property3, property4, str, i3, i4);
                    str5 = str;
                } else if (i4 >= 0) {
                    str5 = str;
                    socketCreateSocket.connect(new InetSocketAddress(str5, i3), i4);
                } else {
                    str5 = str;
                    socketCreateSocket.connect(new InetSocketAddress(str5, i3));
                }
                logger.finest("success!");
                if ((z2 || (socketFactory2 instanceof SSLSocketFactory)) && !(socketCreateSocket instanceof SSLSocket)) {
                    String property5 = properties.getProperty(str2 + ".ssl.trust");
                    if (property5 != null) {
                        try {
                            MailSSLSocketFactory mailSSLSocketFactory = new MailSSLSocketFactory();
                            if (property5.equals("*")) {
                                mailSSLSocketFactory.setTrustAllHosts(true);
                            } else {
                                mailSSLSocketFactory.setTrustedHosts(property5.split("\\s+"));
                            }
                            sSLSocketFactory = mailSSLSocketFactory;
                        } catch (GeneralSecurityException e2) {
                            IOException iOException = new IOException("Can't create MailSSLSocketFactory");
                            iOException.initCause(e2);
                            throw iOException;
                        }
                    } else {
                        sSLSocketFactory = socketFactory2 instanceof SSLSocketFactory ? (SSLSocketFactory) socketFactory2 : (SSLSocketFactory) SSLSocketFactory.getDefault();
                    }
                    socketCreateSocket = sSLSocketFactory.createSocket(socketCreateSocket, str5, i3, true);
                    socketFactory2 = sSLSocketFactory;
                }
                configureSSLSocket(socketCreateSocket, str5, properties, str2, socketFactory2);
                return socketCreateSocket;
            } catch (IOException e3) {
                e = e3;
                IOException iOException2 = e;
                logger.log(Level.FINEST, "connection failed", (Throwable) iOException2);
                throw new SocketConnectException(str4, iOException2, str, i3, i4);
            }
        } catch (IOException e4) {
            e = e4;
        }
    }

    private static ClassLoader getContextClassLoader() {
        return (ClassLoader) AccessController.doPrivileged(new PrivilegedAction<ClassLoader>() { // from class: com.sun.mail.util.SocketFetcher.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public ClassLoader run() {
                try {
                    return Thread.currentThread().getContextClassLoader();
                } catch (SecurityException unused) {
                    return null;
                }
            }
        });
    }

    /* JADX WARN: Code duplicated, block: B:55:0x016a  */
    /* JADX WARN: Code duplicated, block: B:57:0x016e  */
    /* JADX WARN: Code duplicated, block: B:59:0x0179  */
    /* JADX WARN: Code duplicated, block: B:60:0x017d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0183  */
    /* JADX WARN: Code duplicated, block: B:65:0x0186  */
    /* JADX WARN: Code duplicated, block: B:70:0x019c  */
    /* JADX WARN: Code duplicated, block: B:71:0x01b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:72:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:74:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:86:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:74:0x01bc, please report this as an issue */
    public static Socket getSocket(String str, int i2, Properties properties, String str2, boolean z2) {
        int i3;
        SocketFactory socketFactory;
        String str3;
        Socket socketCreateSocket;
        int i4;
        Exception e2;
        Exception exc;
        Throwable targetException;
        String str4 = str2;
        if (logger.isLoggable(Level.FINER)) {
            MailLogger mailLogger = logger;
            StringBuilder sb = new StringBuilder("getSocket, host ");
            sb.append(str);
            sb.append(", port ");
            i3 = i2;
            sb.append(i3);
            sb.append(", prefix ");
            sb.append(str4);
            sb.append(", useSSL ");
            sb.append(z2);
            mailLogger.finer(sb.toString());
        } else {
            i3 = i2;
        }
        if (str4 == null) {
            str4 = "socket";
        }
        String str5 = str4;
        Properties properties2 = properties == null ? new Properties() : properties;
        int intProperty = PropUtil.getIntProperty(properties2, str5.concat(".connectiontimeout"), -1);
        String property = properties2.getProperty(str5.concat(".localaddress"), null);
        InetAddress byName = property != null ? InetAddress.getByName(property) : null;
        int intProperty2 = PropUtil.getIntProperty(properties2, str5.concat(".localport"), 0);
        boolean booleanProperty = PropUtil.getBooleanProperty(properties2, str5.concat(".socketFactory.fallback"), true);
        int intProperty3 = PropUtil.getIntProperty(properties2, str5.concat(".timeout"), -1);
        String str6 = "unknown socket factory";
        if (z2) {
            try {
                try {
                    Object obj = properties2.get(str5.concat(".ssl.socketFactory"));
                    if (obj instanceof SocketFactory) {
                        socketFactory = (SocketFactory) obj;
                        str6 = "SSL socket factory instance " + socketFactory;
                    } else {
                        socketFactory = null;
                    }
                    if (socketFactory == null) {
                        String property2 = properties2.getProperty(str5.concat(".ssl.socketFactory.class"));
                        str6 = "SSL socket factory class " + property2;
                        socketFactory = getSocketFactory(property2);
                    }
                    str3 = ".ssl.socketFactory.port";
                } catch (SocketTimeoutException e3) {
                    throw e3;
                }
            } catch (Exception e4) {
                e2 = e4;
                i4 = -1;
                if (!booleanProperty) {
                    if (e2 instanceof InvocationTargetException) {
                        targetException = ((InvocationTargetException) e2).getTargetException();
                        if (targetException instanceof Exception) {
                            exc = (Exception) targetException;
                        } else {
                            exc = e2;
                        }
                    } else {
                        exc = e2;
                    }
                    if (exc instanceof IOException) {
                        throw ((IOException) exc);
                    }
                    throw new SocketConnectException(d0.e("Using ", str6), exc, str, i4, intProperty);
                }
                socketCreateSocket = null;
                if (socketCreateSocket == null) {
                    return createSocket(byName, intProperty2, str, i2, intProperty, intProperty3, properties2, str5, null, z2);
                }
                if (intProperty3 < 0) {
                    return socketCreateSocket;
                }
                if (logger.isLoggable(Level.FINEST)) {
                    logger.finest("set socket read timeout " + intProperty3);
                }
                socketCreateSocket.setSoTimeout(intProperty3);
                return socketCreateSocket;
            }
        } else {
            socketFactory = null;
            str3 = null;
        }
        if (socketFactory == null) {
            Object obj2 = properties2.get(str5.concat(".socketFactory"));
            if (obj2 instanceof SocketFactory) {
                socketFactory = (SocketFactory) obj2;
                str6 = "socket factory instance " + socketFactory;
            }
            if (socketFactory == null) {
                String property3 = properties2.getProperty(str5.concat(".socketFactory.class"));
                str6 = "socket factory class " + property3;
                socketFactory = getSocketFactory(property3);
            }
            str3 = ".socketFactory.port";
        }
        SocketFactory socketFactory2 = socketFactory;
        String str7 = str6;
        if (socketFactory2 != null) {
            try {
                i4 = -1;
                try {
                    int intProperty4 = PropUtil.getIntProperty(properties2, str5 + str3, -1);
                    int i5 = intProperty4 == -1 ? i3 : intProperty4;
                    try {
                        socketCreateSocket = createSocket(byName, intProperty2, str, i5, intProperty, intProperty3, properties2, str5, socketFactory2, z2);
                    } catch (Exception e5) {
                        e2 = e5;
                        str6 = str7;
                        i4 = i5;
                        if (!booleanProperty) {
                            if (e2 instanceof InvocationTargetException) {
                                targetException = ((InvocationTargetException) e2).getTargetException();
                                if (targetException instanceof Exception) {
                                    exc = (Exception) targetException;
                                } else {
                                    exc = e2;
                                }
                            } else {
                                exc = e2;
                            }
                            if (exc instanceof IOException) {
                                throw ((IOException) exc);
                            }
                            throw new SocketConnectException(d0.e("Using ", str6), exc, str, i4, intProperty);
                        }
                        socketCreateSocket = null;
                    }
                } catch (Exception e6) {
                    e2 = e6;
                    str6 = str7;
                    if (!booleanProperty) {
                        if (e2 instanceof InvocationTargetException) {
                            targetException = ((InvocationTargetException) e2).getTargetException();
                            if (targetException instanceof Exception) {
                                exc = (Exception) targetException;
                            } else {
                                exc = e2;
                            }
                        } else {
                            exc = e2;
                        }
                        if (exc instanceof IOException) {
                            throw ((IOException) exc);
                        }
                        throw new SocketConnectException(d0.e("Using ", str6), exc, str, i4, intProperty);
                    }
                    socketCreateSocket = null;
                    if (socketCreateSocket == null) {
                        return createSocket(byName, intProperty2, str, i2, intProperty, intProperty3, properties2, str5, null, z2);
                    }
                    if (intProperty3 < 0) {
                        return socketCreateSocket;
                    }
                    if (logger.isLoggable(Level.FINEST)) {
                        logger.finest("set socket read timeout " + intProperty3);
                    }
                    socketCreateSocket.setSoTimeout(intProperty3);
                    return socketCreateSocket;
                }
            } catch (Exception e7) {
                e2 = e7;
                i4 = -1;
            }
        } else {
            socketCreateSocket = null;
        }
        if (socketCreateSocket == null) {
            return createSocket(byName, intProperty2, str, i2, intProperty, intProperty3, properties2, str5, null, z2);
        }
        if (intProperty3 < 0) {
            return socketCreateSocket;
        }
        if (logger.isLoggable(Level.FINEST)) {
            logger.finest("set socket read timeout " + intProperty3);
        }
        socketCreateSocket.setSoTimeout(intProperty3);
        return socketCreateSocket;
    }

    private static SocketFactory getSocketFactory(String str) throws ClassNotFoundException {
        Class<?> cls;
        if (str == null || str.length() == 0) {
            return null;
        }
        ClassLoader contextClassLoader = getContextClassLoader();
        if (contextClassLoader != null) {
            try {
                cls = Class.forName(str, false, contextClassLoader);
            } catch (ClassNotFoundException unused) {
                cls = null;
            }
        } else {
            cls = null;
        }
        if (cls == null) {
            cls = Class.forName(str);
        }
        return (SocketFactory) cls.getMethod("getDefault", null).invoke(new Object(), null);
    }

    private static boolean isRecoverable(Throwable th) {
        return (th instanceof Exception) || (th instanceof LinkageError);
    }

    private static boolean matchCert(String str, X509Certificate x509Certificate) {
        MailLogger mailLogger = logger;
        Level level = Level.FINER;
        if (mailLogger.isLoggable(level)) {
            logger.finer("matchCert server " + str + ", cert " + x509Certificate);
        }
        try {
            Class<?> cls = Class.forName("sun.security.util.HostnameChecker");
            Object objInvoke = cls.getMethod("getInstance", Byte.TYPE).invoke(new Object(), (byte) 2);
            if (logger.isLoggable(level)) {
                logger.finer("using sun.security.util.HostnameChecker");
            }
            try {
                cls.getMethod("match", String.class, X509Certificate.class).invoke(objInvoke, str, x509Certificate);
                return true;
            } catch (InvocationTargetException e2) {
                logger.log(Level.FINER, "HostnameChecker FAIL", (Throwable) e2);
                return false;
            }
        } catch (Exception e3) {
            logger.log(Level.FINER, "NO sun.security.util.HostnameChecker", (Throwable) e3);
            try {
                Collection<List<?>> subjectAlternativeNames = x509Certificate.getSubjectAlternativeNames();
                if (subjectAlternativeNames != null) {
                    boolean z2 = false;
                    for (List<?> list : subjectAlternativeNames) {
                        if (((Integer) list.get(0)).intValue() == 2) {
                            String str2 = (String) list.get(1);
                            if (logger.isLoggable(Level.FINER)) {
                                logger.finer("found name: " + str2);
                            }
                            if (matchServer(str, str2)) {
                                return true;
                            }
                            z2 = true;
                        }
                    }
                    if (z2) {
                        return false;
                    }
                }
            } catch (CertificateParsingException unused) {
            }
            Matcher matcher = Pattern.compile("CN=([^,]*)").matcher(x509Certificate.getSubjectX500Principal().getName());
            return matcher.find() && matchServer(str, matcher.group(1).trim());
        }
    }

    private static boolean matchServer(String str, String str2) {
        int length;
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("match server " + str + " with " + str2);
        }
        if (!str2.startsWith("*.")) {
            return str.equalsIgnoreCase(str2);
        }
        String strSubstring = str2.substring(2);
        return strSubstring.length() != 0 && (length = str.length() - strSubstring.length()) >= 1 && str.charAt(length + (-1)) == '.' && str.regionMatches(true, length, strSubstring, 0, strSubstring.length());
    }

    private static void proxyConnect(Socket socket, String str, int i2, String str2, String str3, String str4, int i3, int i4) throws IOException {
        if (logger.isLoggable(Level.FINE)) {
            logger.fine("connecting through proxy " + str + ":" + i2 + " to " + str4 + ":" + i3);
        }
        if (i4 >= 0) {
            socket.connect(new InetSocketAddress(str, i2), i4);
        } else {
            socket.connect(new InetSocketAddress(str, i2));
        }
        OutputStream outputStream = socket.getOutputStream();
        Charset charset = StandardCharsets.UTF_8;
        PrintStream printStream = new PrintStream(outputStream, false, charset.name());
        StringBuilder sb = new StringBuilder("CONNECT ");
        sb.append(str4);
        sb.append(":");
        sb.append(i3);
        sb.append(" HTTP/1.1\r\nHost: ");
        sb.append(str4);
        sb.append(":");
        sb.append(i3);
        sb.append("\r\n");
        if (str2 != null && str3 != null) {
            String str5 = new String(BASE64EncoderStream.encode((str2 + ':' + str3).getBytes(charset)), StandardCharsets.US_ASCII);
            sb.append("Proxy-Authorization: Basic ");
            sb.append(str5);
            sb.append("\r\n");
        }
        sb.append("Proxy-Connection: keep-alive\r\n\r\n");
        printStream.print(sb.toString());
        printStream.flush();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(socket.getInputStream(), charset));
        boolean z2 = true;
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null || line.length() == 0) {
                return;
            }
            logger.finest(line);
            if (z2) {
                StringTokenizer stringTokenizer = new StringTokenizer(line);
                stringTokenizer.nextToken();
                if (!stringTokenizer.nextToken().equals("200")) {
                    try {
                        socket.close();
                    } catch (IOException unused) {
                    }
                    ConnectException connectException = new ConnectException("connection through proxy " + str + ":" + i2 + " to " + str4 + ":" + i3 + " failed: " + line);
                    logger.log(Level.FINE, "connect failed", (Throwable) connectException);
                    throw connectException;
                }
                z2 = false;
            }
        }
    }

    @Deprecated
    public static Socket startTLS(Socket socket) {
        return startTLS(socket, new Properties(), "socket");
    }

    private static String[] stringArray(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str);
        ArrayList arrayList = new ArrayList();
        while (stringTokenizer.hasMoreTokens()) {
            arrayList.add(stringTokenizer.nextToken());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Deprecated
    public static Socket startTLS(Socket socket, Properties properties, String str) {
        return startTLS(socket, socket.getInetAddress().getHostName(), properties, str);
    }

    public static Socket startTLS(Socket socket, String str, Properties properties, String str2) throws IOException {
        SocketFactory socketFactory;
        String str3;
        SSLSocketFactory sSLSocketFactory;
        int port = socket.getPort();
        if (logger.isLoggable(Level.FINER)) {
            logger.finer("startTLS host " + str + ", port " + port);
        }
        String str4 = "unknown socket factory";
        try {
            Object obj = properties.get(str2 + ".ssl.socketFactory");
            SSLSocketFactory sSLSocketFactory2 = null;
            sSLSocketFactory2 = null;
            if (obj instanceof SocketFactory) {
                socketFactory = (SocketFactory) obj;
                str4 = "SSL socket factory instance " + socketFactory;
            } else {
                socketFactory = null;
            }
            if (socketFactory == null) {
                String property = properties.getProperty(str2 + ".ssl.socketFactory.class");
                socketFactory = getSocketFactory(property);
                str4 = "SSL socket factory class " + property;
            }
            if (socketFactory != null && (socketFactory instanceof SSLSocketFactory)) {
                sSLSocketFactory2 = (SSLSocketFactory) socketFactory;
            }
            if (sSLSocketFactory2 == null) {
                Object obj2 = properties.get(str2 + ".socketFactory");
                if (obj2 instanceof SocketFactory) {
                    socketFactory = (SocketFactory) obj2;
                    str4 = "socket factory instance " + socketFactory;
                }
                if (socketFactory == null) {
                    String property2 = properties.getProperty(str2 + ".socketFactory.class");
                    socketFactory = getSocketFactory(property2);
                    str4 = "socket factory class " + property2;
                }
                if (socketFactory != null && (socketFactory instanceof SSLSocketFactory)) {
                    sSLSocketFactory2 = (SSLSocketFactory) socketFactory;
                }
            }
            SSLSocketFactory sSLSocketFactory3 = sSLSocketFactory2;
            if (sSLSocketFactory2 == null) {
                String property3 = properties.getProperty(str2 + ".ssl.trust");
                if (property3 != null) {
                    try {
                        MailSSLSocketFactory mailSSLSocketFactory = new MailSSLSocketFactory();
                        if (property3.equals("*")) {
                            mailSSLSocketFactory.setTrustAllHosts(true);
                        } else {
                            mailSSLSocketFactory.setTrustedHosts(property3.split("\\s+"));
                        }
                        str3 = "mail SSL socket factory";
                        sSLSocketFactory = mailSSLSocketFactory;
                    } catch (GeneralSecurityException e2) {
                        IOException iOException = new IOException("Can't create MailSSLSocketFactory");
                        iOException.initCause(e2);
                        throw iOException;
                    }
                } else {
                    str3 = "default SSL socket factory";
                    sSLSocketFactory = (SSLSocketFactory) SSLSocketFactory.getDefault();
                }
                sSLSocketFactory3 = sSLSocketFactory;
            }
            Socket socketCreateSocket = sSLSocketFactory3.createSocket(socket, str, port, true);
            configureSSLSocket(socketCreateSocket, str, properties, str2, sSLSocketFactory3);
            return socketCreateSocket;
        } catch (Exception e3) {
            e = e3;
            if (e instanceof InvocationTargetException) {
                Throwable targetException = ((InvocationTargetException) e).getTargetException();
                if (targetException instanceof Exception) {
                    e = (Exception) targetException;
                }
            }
            if (e instanceof IOException) {
                throw ((IOException) e);
            }
            StringBuilder sbK = d0.k("Exception in startTLS using ", str4, ": host, port: ", str, ", ");
            sbK.append(port);
            sbK.append("; Exception: ");
            sbK.append(e);
            IOException iOException2 = new IOException(sbK.toString());
            iOException2.initCause(e);
            throw iOException2;
        }
    }

    public static Socket getSocket(String str, int i2, Properties properties, String str2) {
        return getSocket(str, i2, properties, str2, false);
    }
}
