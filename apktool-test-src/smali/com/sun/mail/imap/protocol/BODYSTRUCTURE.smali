.class public Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static MULTI:I

.field private static NESTED:I

.field private static SINGLE:I

.field static final name:[C

.field private static final parseDebug:Z


# instance fields
.field public attachment:Ljava/lang/String;

.field public bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

.field public cParams:Ljavax/mail/internet/ParameterList;

.field public dParams:Ljavax/mail/internet/ParameterList;

.field public description:Ljava/lang/String;

.field public disposition:Ljava/lang/String;

.field public encoding:Ljava/lang/String;

.field public envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

.field public id:Ljava/lang/String;

.field public language:[Ljava/lang/String;

.field public lines:I

.field public md5:Ljava/lang/String;

.field public msgno:I

.field private processedType:I

.field public size:I

.field public subtype:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    const/4 v0, 0x1

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    const/4 v0, 0x2

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    const/4 v0, 0x3

    sput v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    const-string v0, "mail.imap.parse.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    return-void

    :array_0
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
        0x53s
        0x54s
        0x52s
        0x55s
        0x43s
        0x54s
        0x55s
        0x52s
        0x45s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_0

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: parsing BODYSTRUCTURE"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    if-eqz v2, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: msgno "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->msgno:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_43

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    const-string v5, "DEBUG IMAP: language "

    const-string v6, "DEBUG IMAP: language len "

    const-string v7, "DEBUG IMAP: disposition NIL"

    const/16 v8, 0x6e

    const/16 v9, 0x4e

    const-string v10, "DEBUG IMAP: disposition DONE"

    const-string v11, "DEBUG IMAP: disposition "

    const-string v12, "DEBUG IMAP: parse DONE"

    const-string v13, "DEBUG IMAP: subtype "

    const/16 v15, 0x29

    if-ne v3, v4, :cond_19

    if-eqz v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: parsing multipart"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    const-string v2, "multipart"

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    sget v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    iput v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    new-instance v3, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    new-instance v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v2, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-eq v2, v4, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    if-eqz v2, :cond_7

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v12, "DEBUG IMAP: parsing extension data"

    invoke-virtual {v3, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_8

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: body parameters DONE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_d

    if-eqz v2, :cond_a

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "DEBUG IMAP: parse disposition"

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    if-eqz v2, :cond_b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz v2, :cond_14

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition in multipart"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eq v3, v9, :cond_12

    if-ne v3, v8, :cond_e

    goto :goto_1

    :cond_e
    if-eqz v2, :cond_f

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "DEBUG IMAP: bad multipart disposition, applying Exchange bug workaround"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v2, :cond_10

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DEBUG IMAP: multipart description "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_10
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_11

    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_0

    :cond_11
    return-void

    :cond_12
    :goto_1
    if-eqz v2, :cond_13

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_13
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Response;->skip(I)V

    :cond_14
    :goto_2
    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_16

    if-eqz v2, :cond_15

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: no body-fld-lang"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_15
    return-void

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_17

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_18

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_17
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_18

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_18
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3f

    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_3

    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    if-eq v3, v15, :cond_42

    if-eqz v2, :cond_1a

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v14, "DEBUG IMAP: single part"

    invoke-virtual {v3, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1a
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-eqz v2, :cond_1b

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG IMAP: type "

    invoke-direct {v14, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1b
    sget v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    if-eqz v2, :cond_1c

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1c
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    if-nez v3, :cond_1d

    const-string v3, "application"

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v3, "octet-stream"

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    :cond_1d
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    if-eqz v2, :cond_1e

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: cParams "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->cParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1e
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    if-eqz v2, :cond_1f

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: id "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->id:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    if-eqz v2, :cond_20

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: description "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->description:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_20
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readAtomString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_22

    const-string v8, "NIL"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    if-eqz v2, :cond_21

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "DEBUG IMAP: NIL encoding, applying Exchange bug workaround"

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_21
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    :cond_22
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    if-eqz v3, :cond_23

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    :cond_23
    if-eqz v2, :cond_24

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: encoding "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->encoding:Ljava/lang/String;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_24
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-eqz v2, :cond_25

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "DEBUG IMAP: size "

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_25
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->size:I

    if-ltz v3, :cond_41

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v8, "text"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v8, "/"

    const-string v13, "BODYSTRUCTURE parse error: bad ``lines\'\' element"

    const-string v14, "DEBUG IMAP: lines "

    if-eqz v3, :cond_28

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-eqz v2, :cond_26

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_26
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v3, :cond_27

    goto/16 :goto_4

    :cond_27
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v1, v13}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_28
    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    const-string v9, "message"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v9, "rfc822"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    sget v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_2c

    new-instance v3, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->envelope:Lcom/sun/mail/imap/protocol/ENVELOPE;

    if-eqz v2, :cond_29

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: got envelope of nested message"

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_29
    new-instance v3, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v3, v1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    filled-new-array {v3}, [Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->bodies:[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    move-result v3

    iput v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-eqz v2, :cond_2a

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2a
    iget v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->lines:I

    if-ltz v3, :cond_2b

    goto :goto_4

    :cond_2b
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    invoke-direct {v1, v13}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2c
    if-eqz v2, :cond_2e

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "DEBUG IMAP: missing envelope and body of nested message"

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_2d
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_40

    :cond_2e
    :goto_4
    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_30

    if-eqz v2, :cond_2f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2f
    return-void

    :cond_30
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->md5:Ljava/lang/String;

    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_32

    if-eqz v2, :cond_31

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: no MD5 DONE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_31
    return-void

    :cond_32
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v3

    if-ne v3, v4, :cond_36

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    if-eqz v2, :cond_33

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->disposition:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_33
    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    if-eqz v2, :cond_34

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "DEBUG IMAP: dParams "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->dParams:Ljavax/mail/internet/ParameterList;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_34
    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_35

    goto :goto_6

    :cond_35
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing ``)\'\' at end of disposition"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_36
    const/16 v9, 0x4e

    if-eq v3, v9, :cond_38

    const/16 v9, 0x6e

    if-ne v3, v9, :cond_37

    goto :goto_5

    :cond_37
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "BODYSTRUCTURE parse error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": bad single part disposition, b "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    :goto_5
    if-eqz v2, :cond_39

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_39
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/sun/mail/iap/Response;->skip(I)V

    :goto_6
    invoke-virtual {v1, v15}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v3

    if-eqz v3, :cond_3b

    if-eqz v2, :cond_3a

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3a
    return-void

    :cond_3b
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v3

    if-ne v3, v4, :cond_3c

    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_3d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3d

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->language:[Ljava/lang/String;

    if-eqz v2, :cond_3d

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3d
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_3e

    invoke-direct/range {p0 .. p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    goto :goto_7

    :cond_3e
    sget-boolean v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v1, :cond_3f

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "DEBUG IMAP: all DONE"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3f
    return-void

    :cond_40
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "BODYSTRUCTURE parse error: server erroneously included ``lines\'\' element with type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_41
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: bad ``size\'\' element"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing body content"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_43
    new-instance v1, Lcom/sun/mail/iap/ParsingException;

    const-string v2, "BODYSTRUCTURE parse error: missing ``(\'\' at start"

    invoke-direct {v1, v2}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private parseBodyExtension(Lcom/sun/mail/iap/Response;)V
    .locals 2

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseBodyExtension(Lcom/sun/mail/iap/Response;)V

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readNumber()I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private parseParameters(Lcom/sun/mail/iap/Response;)Ljavax/mail/internet/ParameterList;
    .locals 7

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_6

    new-instance v0, Ljavax/mail/internet/ParameterList;

    invoke-direct {v0}, Ljavax/mail/internet/ParameterList;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v2, :cond_1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DEBUG IMAP: parameter name "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_2

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DEBUG IMAP: parameter value "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    if-nez v3, :cond_4

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "DEBUG IMAP: NIL parameter value, applying Exchange bug workaround"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    const-string v3, ""

    :cond_4
    invoke-virtual {v0, v1, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x29

    invoke-virtual {p1, v1}, Lcom/sun/mail/iap/Response;->isNextNonSpace(C)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljavax/mail/internet/ParameterList;->combineSegments()V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODYSTRUCTURE parse error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->subtype:Ljava/lang/String;

    const-string v2, ": null name in parameter list"

    invoke-static {v0, v1, v2}, LM/d0;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_8

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "Parameter list parse error"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_0
    sget-boolean v0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->parseDebug:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "DEBUG IMAP: parameter list NIL"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public isMulti()Z
    .locals 2

    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->MULTI:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNested()Z
    .locals 2

    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->NESTED:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSingle()Z
    .locals 2

    iget v0, p0, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->processedType:I

    sget v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->SINGLE:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
