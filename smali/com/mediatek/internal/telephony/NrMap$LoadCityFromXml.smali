.class Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;
.super Landroid/os/AsyncTask;
.source "NrMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/NrMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadCityFromXml"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private done:Z

.field final synthetic this$0:Lcom/mediatek/internal/telephony/NrMap;


# direct methods
.method private constructor <init>(Lcom/mediatek/internal/telephony/NrMap;)V
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 181
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->done:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/internal/telephony/NrMap;Lcom/mediatek/internal/telephony/NrMap$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/mediatek/internal/telephony/NrMap;
    .param p2, "x1"    # Lcom/mediatek/internal/telephony/NrMap$1;

    .line 180
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;-><init>(Lcom/mediatek/internal/telephony/NrMap;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .registers 14
    .param p1, "path"    # [Ljava/lang/String;

    .line 191
    const-string v0, "n/a"

    const/4 v1, 0x1

    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 192
    .local v2, "xmlfactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v2, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 193
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 194
    .local v3, "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "system_ext/etc/nr-city.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v4, "city_file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_a4

    .line 196
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 197
    .local v5, "xmlreader":Ljava/io/FileReader;
    invoke-interface {v3, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 198
    const-string v6, "records"

    invoke-static {v3, v6}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 199
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    .line 200
    .local v6, "event":I
    move-object v7, v0

    .line 201
    .local v7, "iso":Ljava/lang/String;
    move-object v8, v0

    .line 202
    .local v8, "city":Ljava/lang/String;
    nop

    .line 203
    .local v0, "mccmnc":Ljava/lang/String;
    :goto_33
    if-eq v6, v1, :cond_a3

    .line 204
    if-nez v6, :cond_38

    goto :goto_9d

    .line 206
    :cond_38
    const/4 v9, 0x2

    if-ne v6, v9, :cond_80

    .line 208
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mccmnc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    .line 209
    new-instance v9, Ljava/lang/String;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v9

    goto :goto_9d

    .line 211
    :cond_52
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "city_name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_69

    .line 212
    new-instance v9, Ljava/lang/String;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_9d

    .line 214
    :cond_69
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "iso"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 215
    new-instance v9, Ljava/lang/String;

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v7, v9

    goto :goto_9d

    .line 218
    :cond_80
    const/4 v9, 0x3

    if-ne v6, v9, :cond_9d

    .line 220
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "record"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 222
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v10, Lcom/mediatek/internal/telephony/NrMap$Record;

    iget-object v11, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    invoke-direct {v10, v11, v0, v8, v7}, Lcom/mediatek/internal/telephony/NrMap$Record;-><init>(Lcom/mediatek/internal/telephony/NrMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_9d
    :goto_9d
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    move v6, v9

    goto :goto_33

    .line 227
    .end local v0    # "mccmnc":Ljava/lang/String;
    .end local v5    # "xmlreader":Ljava/io/FileReader;
    .end local v6    # "event":I
    .end local v7    # "iso":Ljava/lang/String;
    .end local v8    # "city":Ljava/lang/String;
    :cond_a3
    goto :goto_af

    .line 228
    :cond_a4
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "LoadCityFromXml file doesn\'t exist system_ext/etc/nr-city.xml"

    invoke-static {v0, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_af} :catch_b0

    .line 231
    .end local v2    # "xmlfactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3    # "xmlparser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v4    # "city_file":Ljava/io/File;
    :goto_af
    goto :goto_b1

    .line 230
    :catch_b0
    move-exception v0

    .line 232
    :goto_b1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b2
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_137

    .line 233
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v2

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/NrMap$Record;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/NrMap$Record;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->findByCityName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_133

    .line 235
    iget-object v2, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->city_sql:Lcom/mediatek/internal/telephony/NrMap$CitySQL;
    invoke-static {v2}, Lcom/mediatek/internal/telephony/NrMap;->access$200(Lcom/mediatek/internal/telephony/NrMap;)Lcom/mediatek/internal/telephony/NrMap$CitySQL;

    move-result-object v2

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/internal/telephony/NrMap$Record;

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/NrMap$Record;->getMccMnc()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/internal/telephony/NrMap$Record;

    invoke-virtual {v4}, Lcom/mediatek/internal/telephony/NrMap$Record;->getIso()Ljava/lang/String;

    move-result-object v4

    .line 236
    # getter for: Lcom/mediatek/internal/telephony/NrMap;->records:Ljava/util/ArrayList;
    invoke-static {}, Lcom/mediatek/internal/telephony/NrMap;->access$100()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mediatek/internal/telephony/NrMap$Record;

    invoke-virtual {v5}, Lcom/mediatek/internal/telephony/NrMap$Record;->getCityName()Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/mediatek/internal/telephony/NrMap$CitySQL;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 232
    :cond_133
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b2

    .line 239
    .end local v0    # "i":I
    :cond_137
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 180
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public isReady()Z
    .registers 2

    .line 249
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->done:Z

    return v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .registers 4
    .param p1, "i"    # Ljava/lang/Integer;

    .line 244
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadCityFromXml.done: system_ext/etc/nr-city.xml"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->done:Z

    .line 246
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 180
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .line 185
    iget-object v0, p0, Lcom/mediatek/internal/telephony/NrMap$LoadCityFromXml;->this$0:Lcom/mediatek/internal/telephony/NrMap;

    # getter for: Lcom/mediatek/internal/telephony/NrMap;->LOG_TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/internal/telephony/NrMap;->access$000(Lcom/mediatek/internal/telephony/NrMap;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "loadCityFromXml.onPreExecute: system_ext/etc/nr-city.xml"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    return-void
.end method
