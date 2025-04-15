.class public final Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignProto.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayloadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2953
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4000()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;)V
    .locals 0

    .line 2946
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCampaignEndTimeMillis()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3186
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3187
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$5000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public clearCampaignId()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3006
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3007
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public clearCampaignName()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3244
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3245
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$5200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public clearCampaignStartTimeMillis()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3143
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3144
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public clearExperimentalCampaignId()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3083
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3084
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public getCampaignEndTimeMillis()J
    .locals 2

    .line 3159
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignEndTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 2967
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2980
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .line 3202
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3216
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignStartTimeMillis()J
    .locals 2

    .line 3116
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getCampaignStartTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExperimentalCampaignId()Ljava/lang/String;
    .locals 1

    .line 3038
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getExperimentalCampaignId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExperimentalCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3053
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->getExperimentalCampaignIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public setCampaignEndTimeMillis(J)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3172
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3173
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;J)V

    return-object p0
.end method

.method public setCampaignId(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 2993
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 2994
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCampaignIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3021
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3022
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCampaignName(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3230
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3231
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$5100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCampaignNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3260
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3261
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$5300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCampaignStartTimeMillis(J)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3129
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3130
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;J)V

    return-object p0
.end method

.method public setExperimentalCampaignId(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3068
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3069
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setExperimentalCampaignIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;
    .locals 1

    .line 3100
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->copyOnWrite()V

    .line 3101
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;->access$4600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
