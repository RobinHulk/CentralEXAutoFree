package javax.mail;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Vector;
import javax.mail.event.TransportEvent;
import javax.mail.event.TransportListener;

/* JADX INFO: loaded from: classes.dex */
public abstract class Transport extends Service {
    private volatile Vector<TransportListener> transportListeners;

    public Transport(Session session, URLName uRLName) {
        super(session, uRLName);
        this.transportListeners = null;
    }

    public static void send(Message message) throws NoSuchProviderException, SendFailedException {
        message.saveChanges();
        send0(message, message.getAllRecipients(), null, null);
    }

    private static void send0(Message message, Address[] addressArr, String str, String str2) throws NoSuchProviderException, SendFailedException {
        Address[] addressArr2;
        Address[] addressArr3;
        if (addressArr == null || addressArr.length == 0) {
            throw new SendFailedException("No recipient addresses");
        }
        HashMap map = new HashMap();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (int i2 = 0; i2 < addressArr.length; i2++) {
            if (map.containsKey(addressArr[i2].getType())) {
                ((List) map.get(addressArr[i2].getType())).add(addressArr[i2]);
            } else {
                ArrayList arrayList4 = new ArrayList();
                arrayList4.add(addressArr[i2]);
                map.put(addressArr[i2].getType(), arrayList4);
            }
        }
        int size = map.size();
        if (size == 0) {
            throw new SendFailedException("No recipient addresses");
        }
        Session defaultInstance = message.session;
        Address[] addressArr4 = null;
        if (defaultInstance == null) {
            defaultInstance = Session.getDefaultInstance(System.getProperties(), null);
        }
        if (size == 1) {
            Transport transport = defaultInstance.getTransport(addressArr[0]);
            try {
                if (str != null) {
                    transport.connect(str, str2);
                } else {
                    transport.connect();
                }
                transport.sendMessage(message, addressArr);
                transport.close();
                return;
            } catch (Throwable th) {
                transport.close();
                throw th;
            }
        }
        boolean z2 = false;
        MessagingException messagingException = null;
        for (List list : map.values()) {
            int size2 = list.size();
            Address[] addressArr5 = new Address[size2];
            list.toArray(addressArr5);
            Transport transport2 = defaultInstance.getTransport(addressArr5[0]);
            if (transport2 == null) {
                for (int i3 = 0; i3 < size2; i3++) {
                    arrayList.add(addressArr5[i3]);
                }
            } else {
                try {
                    try {
                        transport2.connect();
                        transport2.sendMessage(message, addressArr5);
                        transport2.close();
                    } catch (Throwable th2) {
                        transport2.close();
                        throw th2;
                    }
                } catch (SendFailedException e2) {
                    if (messagingException == null) {
                        messagingException = e2;
                    } else {
                        messagingException.setNextException(e2);
                    }
                    Address[] invalidAddresses = e2.getInvalidAddresses();
                    if (invalidAddresses != null) {
                        for (Address address : invalidAddresses) {
                            arrayList.add(address);
                        }
                    }
                    Address[] validSentAddresses = e2.getValidSentAddresses();
                    if (validSentAddresses != null) {
                        for (Address address2 : validSentAddresses) {
                            arrayList2.add(address2);
                        }
                    }
                    Address[] validUnsentAddresses = e2.getValidUnsentAddresses();
                    if (validUnsentAddresses != null) {
                        for (Address address3 : validUnsentAddresses) {
                            arrayList3.add(address3);
                        }
                    }
                    transport2.close();
                    z2 = true;
                } catch (MessagingException e3) {
                    if (messagingException == null) {
                        messagingException = e3;
                    } else {
                        messagingException.setNextException(e3);
                    }
                    transport2.close();
                    z2 = true;
                }
            }
        }
        if (!z2 && arrayList.size() == 0 && arrayList3.size() == 0) {
            return;
        }
        if (arrayList2.size() > 0) {
            Address[] addressArr6 = new Address[arrayList2.size()];
            arrayList2.toArray(addressArr6);
            addressArr2 = addressArr6;
        } else {
            addressArr2 = null;
        }
        if (arrayList3.size() > 0) {
            Address[] addressArr7 = new Address[arrayList3.size()];
            arrayList3.toArray(addressArr7);
            addressArr3 = addressArr7;
        } else {
            addressArr3 = null;
        }
        if (arrayList.size() > 0) {
            addressArr4 = new Address[arrayList.size()];
            arrayList.toArray(addressArr4);
        }
        throw new SendFailedException("Sending failed", messagingException, addressArr2, addressArr3, addressArr4);
    }

    public synchronized void addTransportListener(TransportListener transportListener) {
        try {
            if (this.transportListeners == null) {
                this.transportListeners = new Vector<>();
            }
            this.transportListeners.addElement(transportListener);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void notifyTransportListeners(int i2, Address[] addressArr, Address[] addressArr2, Address[] addressArr3, Message message) {
        if (this.transportListeners == null) {
            return;
        }
        queueEvent(new TransportEvent(this, i2, addressArr, addressArr2, addressArr3, message), this.transportListeners);
    }

    public synchronized void removeTransportListener(TransportListener transportListener) {
        if (this.transportListeners != null) {
            this.transportListeners.removeElement(transportListener);
        }
    }

    public abstract void sendMessage(Message message, Address[] addressArr);

    public static void send(Message message, Address[] addressArr) throws NoSuchProviderException, SendFailedException {
        message.saveChanges();
        send0(message, addressArr, null, null);
    }

    public static void send(Message message, String str, String str2) throws NoSuchProviderException, SendFailedException {
        message.saveChanges();
        send0(message, message.getAllRecipients(), str, str2);
    }

    public static void send(Message message, Address[] addressArr, String str, String str2) throws NoSuchProviderException, SendFailedException {
        message.saveChanges();
        send0(message, addressArr, str, str2);
    }
}
