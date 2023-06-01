.class public Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;
.super Ljava/lang/Object;
.source "MtkTestConferenceEventPackageParser.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MtkTestConferenceEventPackageParser"

.field private static final PARTICIPANT_TAG:Ljava/lang/String; = "participant"


# instance fields
.field private mInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    .line 77
    return-void
.end method

.method private parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;
    .registers 15
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 129
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, ""

    .line 130
    .local v1, "user":Ljava/lang/String;
    const-string v2, ""

    .line 131
    .local v2, "displayText":Ljava/lang/String;
    const-string v3, ""

    .line 132
    .local v3, "endpoint":Ljava/lang/String;
    const-string v4, ""

    .line 134
    .local v4, "status":Ljava/lang/String;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 135
    .local v5, "outerDepth":I
    :cond_11
    :goto_11
    invoke-static {p1, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    const-string v7, "status"

    const-string v8, "endpoint"

    const-string v9, "display-text"

    const-string v10, "user"

    if-eqz v6, :cond_67

    .line 136
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 137
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 138
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 139
    :cond_31
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 140
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 141
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    goto :goto_11

    .line 142
    :cond_43
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_11

    .line 145
    :cond_55
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 146
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_11

    .line 151
    :cond_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "User: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "MtkTestConferenceEventPackageParser"

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DisplayText: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Endpoint: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Status: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-object v0
.end method


# virtual methods
.method public parse()Landroid/telephony/ims/ImsConferenceState;
    .registers 10

    .line 87
    const-string v0, "Failed to close test conference event package InputStream"

    const-string v1, "MtkTestConferenceEventPackageParser"

    new-instance v2, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v2}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 91
    .local v2, "conferenceState":Landroid/telephony/ims/ImsConferenceState;
    const/4 v3, 0x0

    :try_start_a
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 92
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    iget-object v5, p0, Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-interface {v4, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 93
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 95
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 96
    .local v5, "outerDepth":I
    :cond_1a
    :goto_1a
    invoke-static {v4, v5}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v6

    if-eqz v6, :cond_42

    .line 97
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "participant"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    .line 98
    const-string v6, "Found participant."

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;->parseParticipant(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/Bundle;

    move-result-object v6

    .line 100
    .local v6, "participant":Landroid/os/Bundle;
    iget-object v7, v2, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    const-string v8, "endpoint"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_40} :catch_50
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_40} :catch_50
    .catchall {:try_start_a .. :try_end_40} :catchall_4e

    .line 102
    nop

    .end local v6    # "participant":Landroid/os/Bundle;
    goto :goto_1a

    .line 109
    .end local v5    # "outerDepth":I
    :cond_42
    :try_start_42
    iget-object v5, p0, Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_47} :catch_49

    .line 113
    nop

    .line 116
    return-object v2

    .line 110
    :catch_49
    move-exception v5

    .line 111
    .local v5, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return-object v3

    .line 108
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_4e
    move-exception v4

    goto :goto_63

    .line 104
    :catch_50
    move-exception v4

    .line 105
    .local v4, "e":Ljava/lang/Exception;
    :try_start_51
    const-string v5, "Failed to read test conference event package from XML file"

    invoke-static {v1, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_4e

    .line 106
    nop

    .line 109
    :try_start_57
    iget-object v5, p0, Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_5e

    .line 113
    nop

    .line 106
    return-object v3

    .line 110
    :catch_5e
    move-exception v5

    .line 111
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return-object v3

    .line 109
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e":Ljava/io/IOException;
    :goto_63
    :try_start_63
    iget-object v5, p0, Lcom/mediatek/internal/telephony/test/MtkTestConferenceEventPackageParser;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_68} :catch_6a

    .line 113
    nop

    .line 114
    throw v4

    .line 110
    :catch_6a
    move-exception v4

    .line 111
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return-object v3
.end method
