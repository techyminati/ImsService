.class public abstract Lcom/mediatek/search/ISearchEngineManagerService$Stub;
.super Landroid/os/Binder;
.source "ISearchEngineManagerService.java"

# interfaces
.implements Lcom/mediatek/search/ISearchEngineManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/search/ISearchEngineManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAvailables:I = 0x1

.field static final TRANSACTION_getBestMatch:I = 0x3

.field static final TRANSACTION_getDefault:I = 0x2

.field static final TRANSACTION_getSearchEngine:I = 0x4

.field static final TRANSACTION_setDefault:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 44
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/search/ISearchEngineManagerService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 52
    if-nez p0, :cond_4

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_4
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 56
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/mediatek/search/ISearchEngineManagerService;

    if-eqz v1, :cond_14

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/mediatek/search/ISearchEngineManagerService;

    return-object v1

    .line 59
    :cond_14
    new-instance v1, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/mediatek/search/ISearchEngineManagerService;
    .registers 1

    .line 329
    sget-object v0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/search/ISearchEngineManagerService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/mediatek/search/ISearchEngineManagerService;)Z
    .registers 3
    .param p0, "impl"    # Lcom/mediatek/search/ISearchEngineManagerService;

    .line 319
    sget-object v0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/search/ISearchEngineManagerService;

    if-nez v0, :cond_c

    .line 322
    if-eqz p0, :cond_a

    .line 323
    sput-object p0, Lcom/mediatek/search/ISearchEngineManagerService$Stub$Proxy;->sDefaultImpl:Lcom/mediatek/search/ISearchEngineManagerService;

    .line 324
    const/4 v0, 0x1

    return v0

    .line 326
    :cond_a
    const/4 v0, 0x0

    return v0

    .line 320
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 63
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 67
    const-string v0, "com.mediatek.search.ISearchEngineManagerService"

    .line 68
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_94

    .line 76
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_9a

    .line 153
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 72
    :pswitch_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    return v1

    .line 138
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_25

    .line 141
    sget-object v2, Lcom/mediatek/common/search/SearchEngine;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/search/SearchEngine;

    .local v2, "_arg0":Lcom/mediatek/common/search/SearchEngine;
    goto :goto_26

    .line 144
    .end local v2    # "_arg0":Lcom/mediatek/common/search/SearchEngine;
    :cond_25
    const/4 v2, 0x0

    .line 146
    .restart local v2    # "_arg0":Lcom/mediatek/common/search/SearchEngine;
    :goto_26
    invoke-virtual {p0, v2}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->setDefault(Lcom/mediatek/common/search/SearchEngine;)Z

    move-result v3

    .line 147
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    return v1

    .line 120
    .end local v2    # "_arg0":Lcom/mediatek/common/search/SearchEngine;
    .end local v3    # "_result":Z
    :pswitch_31
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 124
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getSearchEngine(ILjava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v5

    .line 126
    .local v5, "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    if-eqz v5, :cond_4c

    .line 128
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    invoke-virtual {v5, p3, v1}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4f

    .line 132
    :cond_4c
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    :goto_4f
    return v1

    .line 102
    .end local v3    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :pswitch_50
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 106
    .local v3, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 107
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v3, v4}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getBestMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/common/search/SearchEngine;

    move-result-object v5

    .line 108
    .restart local v5    # "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v5, :cond_6b

    .line 110
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v5, p3, v1}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_6e

    .line 114
    :cond_6b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    :goto_6e
    return v1

    .line 88
    .end local v3    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :pswitch_6f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getDefault()Lcom/mediatek/common/search/SearchEngine;

    move-result-object v3

    .line 90
    .local v3, "_result":Lcom/mediatek/common/search/SearchEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    if-eqz v3, :cond_82

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    invoke-virtual {v3, p3, v1}, Lcom/mediatek/common/search/SearchEngine;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_85

    .line 96
    :cond_82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    :goto_85
    return v1

    .line 80
    .end local v3    # "_result":Lcom/mediatek/common/search/SearchEngine;
    :pswitch_86
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/mediatek/search/ISearchEngineManagerService$Stub;->getAvailables()Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/common/search/SearchEngine;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 84
    return v1

    :pswitch_data_94
    .packed-switch 0x5f4e5446
        :pswitch_f
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x1
        :pswitch_86
        :pswitch_6f
        :pswitch_50
        :pswitch_31
        :pswitch_13
    .end packed-switch
.end method
