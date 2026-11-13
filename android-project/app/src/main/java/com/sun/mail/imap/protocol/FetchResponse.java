package com.sun.mail.imap.protocol;

import M.d0;
import com.sun.mail.iap.ParsingException;
import com.sun.mail.iap.Protocol;
import com.sun.mail.iap.Response;
import com.sun.mail.util.ASCIIUtility;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class FetchResponse extends IMAPResponse {
    private static final char[] HEADER = {'.', 'H', 'E', 'A', 'D', 'E', 'R'};
    private static final char[] TEXT = {'.', 'T', 'E', 'X', 'T'};
    private Map<String, Object> extensionItems;
    private final FetchItem[] fitems;
    private Item[] items;

    public FetchResponse(Protocol protocol) throws ParsingException {
        super(protocol);
        this.fitems = null;
        parse();
    }

    public static <T extends Item> List<T> getItems(Response[] responseArr, int i2, Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        if (responseArr == null) {
            return arrayList;
        }
        for (int i3 = 0; i3 < responseArr.length; i3++) {
            Response response = responseArr[i3];
            if (response != null && (response instanceof FetchResponse) && ((FetchResponse) response).getNumber() == i2) {
                FetchResponse fetchResponse = (FetchResponse) responseArr[i3];
                int i4 = 0;
                while (true) {
                    Item[] itemArr = fetchResponse.items;
                    if (i4 < itemArr.length) {
                        if (cls.isInstance(itemArr[i4])) {
                            arrayList.add(cls.cast(fetchResponse.items[i4]));
                        }
                        i4++;
                    }
                }
            }
        }
        return arrayList;
    }

    private boolean match(char[] cArr) {
        int length = cArr.length;
        int i2 = this.index;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i2 + 1;
            int i5 = i3 + 1;
            if (Character.toUpperCase((char) this.buffer[i2]) != cArr[i3]) {
                return false;
            }
            i3 = i5;
            i2 = i4;
        }
        this.index += length;
        return true;
    }

    private String next20() {
        int i2 = this.index;
        int i3 = i2 + 20;
        int i4 = this.size;
        if (i3 > i4) {
            return ASCIIUtility.toString(this.buffer, i2, i4);
        }
        StringBuilder sb = new StringBuilder();
        byte[] bArr = this.buffer;
        int i5 = this.index;
        sb.append(ASCIIUtility.toString(bArr, i5, i5 + 20));
        sb.append("...");
        return sb.toString();
    }

    private void parse() throws ParsingException {
        if (!isNextNonSpace('(')) {
            throw new ParsingException("error in FETCH parsing, missing '(' at index " + this.index);
        }
        ArrayList arrayList = new ArrayList();
        skipSpaces();
        while (this.index < this.size) {
            Item item = parseItem();
            if (item != null) {
                arrayList.add(item);
            } else if (!parseExtensionItem()) {
                StringBuilder sb = new StringBuilder("error in FETCH parsing, unrecognized item at index ");
                sb.append(this.index);
                sb.append(", starts with \"");
                throw new ParsingException(d0.g(sb, next20(), "\""));
            }
            if (isNextNonSpace(')')) {
                this.items = (Item[]) arrayList.toArray(new Item[arrayList.size()]);
                return;
            }
        }
        throw new ParsingException("error in FETCH parsing, ran off end of buffer, size " + this.size);
    }

    private boolean parseExtensionItem() {
        if (this.fitems == null) {
            return false;
        }
        int i2 = 0;
        while (true) {
            FetchItem[] fetchItemArr = this.fitems;
            if (i2 >= fetchItemArr.length) {
                return false;
            }
            if (match(fetchItemArr[i2].getName())) {
                if (this.extensionItems == null) {
                    this.extensionItems = new HashMap();
                }
                this.extensionItems.put(this.fitems[i2].getName(), this.fitems[i2].parseItem(this));
                return true;
            }
            i2++;
        }
    }

    private Item parseItem() {
        boolean z2;
        byte b = this.buffer[this.index];
        if (b != 66) {
            if (b != 73) {
                if (b != 77) {
                    if (b != 82) {
                        if (b != 85) {
                            if (b != 98) {
                                if (b != 105) {
                                    if (b != 109) {
                                        if (b != 114) {
                                            if (b != 117) {
                                                if (b != 69) {
                                                    if (b != 70) {
                                                        if (b != 101) {
                                                            if (b != 102) {
                                                                return null;
                                                            }
                                                        }
                                                    }
                                                    if (match(FLAGS.name)) {
                                                        return new FLAGS(this);
                                                    }
                                                    return null;
                                                }
                                                if (match(ENVELOPE.name)) {
                                                    return new ENVELOPE(this);
                                                }
                                                return null;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        if (match(UID.name)) {
                            return new UID(this);
                        }
                        return null;
                    }
                    if (match(RFC822SIZE.name)) {
                        return new RFC822SIZE(this);
                    }
                    if (!match(RFC822DATA.name)) {
                        return null;
                    }
                    if (match(HEADER)) {
                        z2 = true;
                    } else {
                        match(TEXT);
                        z2 = false;
                    }
                    return new RFC822DATA(this, z2);
                }
                if (match(MODSEQ.name)) {
                    return new MODSEQ(this);
                }
                return null;
            }
            if (match(INTERNALDATE.name)) {
                return new INTERNALDATE(this);
            }
            return null;
        }
        if (match(BODYSTRUCTURE.name)) {
            return new BODYSTRUCTURE(this);
        }
        if (match(BODY.name)) {
            return this.buffer[this.index] == 91 ? new BODY(this) : new BODYSTRUCTURE(this);
        }
        return null;
    }

    public Map<String, Object> getExtensionItems() {
        return this.extensionItems;
    }

    public Item getItem(int i2) {
        return this.items[i2];
    }

    public int getItemCount() {
        return this.items.length;
    }

    public <T extends Item> T getItem(Class<T> cls) {
        int i2 = 0;
        while (true) {
            Item[] itemArr = this.items;
            if (i2 >= itemArr.length) {
                return null;
            }
            if (cls.isInstance(itemArr[i2])) {
                return cls.cast(this.items[i2]);
            }
            i2++;
        }
    }

    public FetchResponse(IMAPResponse iMAPResponse) {
        this(iMAPResponse, null);
    }

    public FetchResponse(IMAPResponse iMAPResponse, FetchItem[] fetchItemArr) throws ParsingException {
        super(iMAPResponse);
        this.fitems = fetchItemArr;
        parse();
    }

    public static <T extends Item> T getItem(Response[] responseArr, int i2, Class<T> cls) {
        if (responseArr == null) {
            return null;
        }
        for (int i3 = 0; i3 < responseArr.length; i3++) {
            Response response = responseArr[i3];
            if (response != null && (response instanceof FetchResponse) && ((FetchResponse) response).getNumber() == i2) {
                FetchResponse fetchResponse = (FetchResponse) responseArr[i3];
                int i4 = 0;
                while (true) {
                    Item[] itemArr = fetchResponse.items;
                    if (i4 >= itemArr.length) {
                        break;
                    }
                    if (cls.isInstance(itemArr[i4])) {
                        return cls.cast(fetchResponse.items[i4]);
                    }
                    i4++;
                }
            }
        }
        return null;
    }

    private boolean match(String str) {
        int length = str.length();
        int i2 = this.index;
        int i3 = 0;
        while (i3 < length) {
            int i4 = i2 + 1;
            int i5 = i3 + 1;
            if (Character.toUpperCase((char) this.buffer[i2]) != str.charAt(i3)) {
                return false;
            }
            i3 = i5;
            i2 = i4;
        }
        this.index += length;
        return true;
    }
}
