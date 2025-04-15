.class public final Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignProto.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayloadOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayloadOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3829
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$5500()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;)V
    .locals 0

    .line 3822
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearCampaignEndTimeMillis()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 4060
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 4061
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public clearCampaignId()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3882
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3883
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$5700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public clearCampaignName()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 4118
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 4119
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public clearCampaignStartTimeMillis()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 4011
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 4012
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public clearExperimentPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3968
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3969
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public getCampaignEndTimeMillis()J
    .locals 2

    .line 4029
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignEndTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .line 3843
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3856
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignName()Ljava/lang/String;
    .locals 1

    .line 4076
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4090
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCampaignStartTimeMillis()J
    .locals 2

    .line 3984
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getCampaignStartTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExperimentPayload()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;
    .locals 1

    .line 3922
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->getExperimentPayload()Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    move-result-object v0

    return-object v0
.end method

.method public hasExperimentPayload()Z
    .locals 1

    .line 3911
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->hasExperimentPayload()Z

    move-result v0

    return v0
.end method

.method public mergeExperimentPayload(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3957
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3958
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    return-object p0
.end method

.method public setCampaignEndTimeMillis(J)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 4044
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 4045
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;J)V

    return-object p0
.end method

.method public setCampaignId(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3869
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3870
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$5600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCampaignIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3897
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3898
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$5800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCampaignName(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 4104
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 4105
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Ljava/lang/String;)V

    return-object p0
.end method

.method public setCampaignNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 4134
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 4135
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setCampaignStartTimeMillis(J)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3997
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3998
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$6200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;J)V

    return-object p0
.end method

.method public setExperimentPayload(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3945
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3946
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$5900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    return-object p0
.end method

.method public setExperimentPayload(Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;
    .locals 1

    .line 3932
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->copyOnWrite()V

    .line 3933
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;->access$5900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;Lcom/google/firebase/inappmessaging/ExperimentPayloadProto$ExperimentPayload;)V

    return-object p0
.end method
