.class Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMtkTelephonyRegistryEx.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 67
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/mediatek/internal/telephony/IMtkTelephonyRegistryEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "com.mediatek.internal.telephony.IMtkTelephonyRegistryEx"

    return-object v0
.end method
