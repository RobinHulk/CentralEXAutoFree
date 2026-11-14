package javax.activation;

import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public interface DataContentHandler {
    Object getContent(DataSource dataSource);

    Object getTransferData(ActivationDataFlavor activationDataFlavor, DataSource dataSource);

    ActivationDataFlavor[] getTransferDataFlavors();

    void writeTo(Object obj, String str, OutputStream outputStream);
}
