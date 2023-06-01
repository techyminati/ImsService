.class Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;
.super Ljava/lang/Object;
.source "MtkSuppServConf.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/internal/telephony/MtkSuppServConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSConfig"
.end annotation


# static fields
.field public static final DONE:I = 0x1

.field public static final UNSET:I


# instance fields
.field public bDefault:Z

.field public bValue:Z

.field public iDefault:I

.field public iValue:I

.field public mCarrierConfigKey:Ljava/lang/String;

.field private mStatus:I

.field public mSystemPropIdx:I

.field public sDefault:Ljava/lang/String;

.field public sValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;


# direct methods
.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;I)V
    .registers 6
    .param p2, "carrierConfigKey"    # Ljava/lang/String;
    .param p3, "systemPropIdx"    # I

    .line 125
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 115
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sDefault:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 121
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iDefault:I

    .line 123
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 126
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 127
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;II)V
    .registers 7
    .param p2, "carrierConfigKey"    # Ljava/lang/String;
    .param p3, "systemPropIdx"    # I
    .param p4, "iDefault"    # I

    .line 144
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 115
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sDefault:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 121
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iDefault:I

    .line 123
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 145
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 146
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 147
    iput p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iDefault:I

    .line 148
    iput p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p2, "carrierConfigKey"    # Ljava/lang/String;
    .param p3, "systemPropIdx"    # I
    .param p4, "sDefault"    # Ljava/lang/String;

    .line 137
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 115
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sDefault:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 121
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iDefault:I

    .line 123
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 138
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 139
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 140
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sDefault:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/mediatek/internal/telephony/MtkSuppServConf;Ljava/lang/String;IZ)V
    .registers 7
    .param p2, "carrierConfigKey"    # Ljava/lang/String;
    .param p3, "systemPropIdx"    # I
    .param p4, "bDefault"    # Z

    .line 130
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->this$0:Lcom/mediatek/internal/telephony/MtkSuppServConf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const-string p1, ""

    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 114
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 115
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sDefault:Ljava/lang/String;

    .line 120
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 121
    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iDefault:I

    .line 123
    iput v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 131
    iput-object p2, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mCarrierConfigKey:Ljava/lang/String;

    .line 132
    iput p3, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mSystemPropIdx:I

    .line 133
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    .line 134
    iput-boolean p4, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 135
    return-void
.end method


# virtual methods
.method public reset()V
    .registers 2

    .line 167
    iget-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bDefault:Z

    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 168
    iget-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sDefault:Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 169
    iget v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iDefault:I

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 172
    return-void
.end method

.method public setValue(I)V
    .registers 3
    .param p1, "iValue"    # I

    .line 162
    iput p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    .line 163
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 164
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "sValue"    # Ljava/lang/String;

    .line 157
    iput-object p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    .line 158
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 159
    return-void
.end method

.method public setValue(Z)V
    .registers 3
    .param p1, "bValue"    # Z

    .line 152
    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    .line 153
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->mStatus:I

    .line 154
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->bValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->sValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/internal/telephony/MtkSuppServConf$SSConfig;->iValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
