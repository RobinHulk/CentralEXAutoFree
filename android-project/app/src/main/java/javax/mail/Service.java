package javax.mail;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.EventListener;
import java.util.Vector;
import java.util.concurrent.Executor;
import javax.mail.event.ConnectionEvent;
import javax.mail.event.ConnectionListener;
import javax.mail.event.MailEvent;

/* JADX INFO: loaded from: classes.dex */
public abstract class Service implements AutoCloseable {
    private boolean connected = false;
    private final Vector<ConnectionListener> connectionListeners = new Vector<>();
    protected boolean debug;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final EventQueue f3736q;
    protected Session session;
    protected volatile URLName url;

    public Service(Session session, URLName uRLName) {
        String property;
        String str;
        String file;
        String password;
        int i2;
        String property2;
        String property3 = null;
        this.url = null;
        this.debug = false;
        this.session = session;
        this.debug = session.getDebug();
        this.url = uRLName;
        if (this.url != null) {
            String protocol = this.url.getProtocol();
            String host = this.url.getHost();
            int port = this.url.getPort();
            property = this.url.getUsername();
            i2 = port;
            password = this.url.getPassword();
            file = this.url.getFile();
            str = protocol;
            property3 = host;
        } else {
            property = null;
            str = null;
            file = null;
            password = null;
            i2 = -1;
        }
        if (str != null) {
            if (property3 == null) {
                property3 = session.getProperty("mail." + str + ".host");
            }
            if (property == null) {
                property = session.getProperty("mail." + str + ".user");
            }
        }
        String property4 = property3 == null ? session.getProperty("mail.host") : property3;
        property = property == null ? session.getProperty("mail.user") : property;
        if (property == null) {
            try {
                property2 = System.getProperty("user.name");
            } catch (SecurityException unused) {
                property2 = property;
            }
        } else {
            property2 = property;
        }
        this.url = new URLName(str, property4, i2, file, property2, password);
        String property5 = session.getProperties().getProperty("mail.event.scope", "folder");
        Executor executor = (Executor) session.getProperties().get("mail.event.executor");
        if (property5.equalsIgnoreCase("application")) {
            this.f3736q = EventQueue.getApplicationEventQueue(executor);
        } else if (property5.equalsIgnoreCase("session")) {
            this.f3736q = session.getEventQueue();
        } else {
            this.f3736q = new EventQueue(executor);
        }
    }

    public void addConnectionListener(ConnectionListener connectionListener) {
        this.connectionListeners.addElement(connectionListener);
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        setConnected(false);
        notifyConnectionListeners(3);
    }

    public void connect() {
        connect(null, null, null);
    }

    public void finalize() {
        try {
            this.f3736q.terminateQueue();
        } finally {
            super.finalize();
        }
    }

    public EventQueue getEventQueue() {
        return this.f3736q;
    }

    Session getSession() {
        return this.session;
    }

    public URLName getURLName() {
        URLName uRLName = this.url;
        return (uRLName == null || (uRLName.getPassword() == null && uRLName.getFile() == null)) ? uRLName : new URLName(uRLName.getProtocol(), uRLName.getHost(), uRLName.getPort(), null, uRLName.getUsername(), null);
    }

    public synchronized boolean isConnected() {
        return this.connected;
    }

    public void notifyConnectionListeners(int i2) {
        if (this.connectionListeners.size() > 0) {
            queueEvent(new ConnectionEvent(this, i2), this.connectionListeners);
        }
        if (i2 == 3) {
            this.f3736q.terminateQueue();
        }
    }

    public boolean protocolConnect(String str, int i2, String str2, String str3) {
        return false;
    }

    public void queueEvent(MailEvent mailEvent, Vector<? extends EventListener> vector) {
        this.f3736q.enqueue(mailEvent, (Vector) vector.clone());
    }

    public void removeConnectionListener(ConnectionListener connectionListener) {
        this.connectionListeners.removeElement(connectionListener);
    }

    public synchronized void setConnected(boolean z2) {
        this.connected = z2;
    }

    public void setURLName(URLName uRLName) {
        this.url = uRLName;
    }

    public String toString() {
        URLName uRLName = getURLName();
        return uRLName != null ? uRLName.toString() : super.toString();
    }

    public void connect(String str, String str2, String str3) {
        connect(str, -1, str2, str3);
    }

    public void connect(String str, String str2) {
        connect(null, str, str2);
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[PHI: r0
  0x0046: PHI (r0v26 java.lang.String) = (r0v0 java.lang.String), (r0v0 java.lang.String), (r0v29 java.lang.String) binds: [B:23:0x0049, B:25:0x0055, B:20:0x003d] A[DONT_GENERATE, DONT_INLINE]] */
    public synchronized void connect(String str, int i2, String str2, String str3) {
        String property;
        String password;
        String str4;
        String file;
        int i3;
        String userName;
        boolean z2;
        AuthenticationFailedException authenticationFailedException;
        boolean zProtocolConnect;
        String password2;
        String property2 = str2;
        synchronized (this) {
            try {
                if (!isConnected()) {
                    InetAddress byName = null;
                    if (this.url != null) {
                        String protocol = this.url.getProtocol();
                        property = str == null ? this.url.getHost() : str;
                        int port = i2 == -1 ? this.url.getPort() : i2;
                        if (property2 == null) {
                            property2 = this.url.getUsername();
                            if (str3 == null) {
                                password2 = this.url.getPassword();
                            } else {
                                password2 = str3;
                            }
                        } else if (str3 == null && property2.equals(this.url.getUsername())) {
                            password2 = this.url.getPassword();
                        } else {
                            password2 = str3;
                        }
                        str4 = protocol;
                        i3 = port;
                        password = password2;
                        file = this.url.getFile();
                    } else {
                        property = str;
                        password = str3;
                        str4 = null;
                        file = null;
                        i3 = i2;
                    }
                    if (str4 != null) {
                        if (property == null) {
                            property = this.session.getProperty("mail." + str4 + ".host");
                        }
                        if (property2 == null) {
                            property2 = this.session.getProperty("mail." + str4 + ".user");
                        }
                    }
                    String property3 = property == null ? this.session.getProperty("mail.host") : property;
                    if (property2 == null) {
                        property2 = this.session.getProperty("mail.user");
                    }
                    if (property2 == null) {
                        try {
                            property2 = System.getProperty("user.name");
                        } catch (SecurityException unused) {
                        }
                    }
                    if (password != null || this.url == null) {
                        userName = property2;
                        z2 = false;
                    } else {
                        setURLName(new URLName(str4, property3, i3, file, property2, null));
                        PasswordAuthentication passwordAuthentication = this.session.getPasswordAuthentication(getURLName());
                        if (passwordAuthentication != null) {
                            if (property2 == null) {
                                property2 = passwordAuthentication.getUserName();
                                password = passwordAuthentication.getPassword();
                            } else if (property2.equals(passwordAuthentication.getUserName())) {
                                password = passwordAuthentication.getPassword();
                            }
                            userName = property2;
                            z2 = false;
                        } else {
                            userName = property2;
                            z2 = true;
                        }
                    }
                    try {
                        zProtocolConnect = protocolConnect(property3, i3, userName, password);
                        authenticationFailedException = null;
                    } catch (AuthenticationFailedException e2) {
                        authenticationFailedException = e2;
                        zProtocolConnect = false;
                    }
                    if (!zProtocolConnect) {
                        try {
                            byName = InetAddress.getByName(property3);
                        } catch (UnknownHostException unused2) {
                        }
                        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication = this.session.requestPasswordAuthentication(byName, i3, str4, null, userName);
                        if (passwordAuthenticationRequestPasswordAuthentication != null) {
                            userName = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                            password = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                            zProtocolConnect = protocolConnect(property3, i3, userName, password);
                        }
                    }
                    if (!zProtocolConnect) {
                        if (authenticationFailedException != null) {
                            throw authenticationFailedException;
                        }
                        if (userName == null) {
                            throw new AuthenticationFailedException("failed to connect, no user name specified?");
                        }
                        if (password == null) {
                            throw new AuthenticationFailedException("failed to connect, no password specified?");
                        }
                        throw new AuthenticationFailedException("failed to connect");
                    }
                    setURLName(new URLName(str4, property3, i3, file, userName, password));
                    if (z2) {
                        this.session.setPasswordAuthentication(getURLName(), new PasswordAuthentication(userName, password));
                    }
                    setConnected(true);
                    notifyConnectionListeners(1);
                } else {
                    throw new IllegalStateException("already connected");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
