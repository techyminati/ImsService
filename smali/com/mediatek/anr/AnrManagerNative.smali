.class public abstract Lcom/mediatek/anr/AnrManagerNative;
.super Landroid/os/Binder;
.source "AnrManagerNative.java"

# interfaces
.implements Lcom/mediatek/anr/IAnrManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anr/AnrManagerNative$Singleton;
    }
.end annotation


# static fields
.field private static final gDefault:Lcom/mediatek/anr/AnrManagerNative$Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mediatek/anr/AnrManagerNative$Singleton<",
            "Lcom/mediatek/anr/IAnrManager;",
            ">;"
        }
    .end annotation
.end field

.field private static sGetService:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "getService"

    invoke-static {v1, v0}, Lcom/mediatek/anr/AnrManagerNative;->getServiceManagerMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/mediatek/anr/AnrManagerNative;->sGetService:Ljava/lang/reflect/Method;

    .line 107
    new-instance v0, Lcom/mediatek/anr/AnrManagerNative$1;

    invoke-direct {v0}, Lcom/mediatek/anr/AnrManagerNative$1;-><init>()V

    sput-object v0, Lcom/mediatek/anr/AnrManagerNative;->gDefault:Lcom/mediatek/anr/AnrManagerNative$Singleton;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 84
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 85
    const-string v0, "android.app.IAnrManager"

    invoke-virtual {p0, p0, v0}, Lcom/mediatek/anr/AnrManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method static synthetic access$000()Ljava/lang/reflect/Method;
    .registers 1

    .line 47
    sget-object v0, Lcom/mediatek/anr/AnrManagerNative;->sGetService:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/mediatek/anr/IAnrManager;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_4
    nop

    .line 69
    const-string v0, "android.app.IAnrManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anr/IAnrManager;

    .line 70
    .local v0, "in":Lcom/mediatek/anr/IAnrManager;
    if-eqz v0, :cond_10

    .line 71
    return-object v0

    .line 74
    :cond_10
    new-instance v1, Lcom/mediatek/anr/AnrManagerProxy;

    invoke-direct {v1, p0}, Lcom/mediatek/anr/AnrManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefault()Lcom/mediatek/anr/IAnrManager;
    .registers 1

    .line 81
    sget-object v0, Lcom/mediatek/anr/AnrManagerNative;->gDefault:Lcom/mediatek/anr/AnrManagerNative$Singleton;

    invoke-virtual {v0}, Lcom/mediatek/anr/AnrManagerNative$Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anr/IAnrManager;

    return-object v0
.end method

.method private static getServiceManagerMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .registers 4
    .param p0, "func"    # Ljava/lang/String;
    .param p1, "cls"    # [Ljava/lang/Class;

    .line 53
    :try_start_0
    const-string v0, "android.os.ServiceManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 54
    .local v0, "serviceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p0, p1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 55
    .end local v0    # "serviceManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_b
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 104
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    packed-switch p1, :pswitch_data_1a

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 92
    :pswitch_8
    const-string v0, "android.app.IAnrManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "msgInfo":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "pid":I
    invoke-virtual {p0, v0, v1}, Lcom/mediatek/anr/AnrManagerNative;->informMessageDump(Ljava/lang/String;I)V

    .line 96
    const/4 v2, 0x1

    return v2

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch
.end method
