.class public final Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CampaignProto.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContentOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1782
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1600()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$1;)V
    .locals 0

    .line 1775
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTriggeringConditions(Ljava/lang/Iterable;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;)",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;"
        }
    .end annotation

    .line 2169
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2170
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2155
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2156
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2157
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2156
    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-object p0
.end method

.method public addTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2129
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2130
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-object p0
.end method

.method public addTriggeringConditions(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2142
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2143
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-object p0
.end method

.method public addTriggeringConditions(Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2116
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2117
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-object p0
.end method

.method public clearContent()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1960
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1961
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public clearDataBundle()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2263
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2264
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1889
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1890
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2300(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public clearIsTestCampaign()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2236
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2237
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public clearPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1792
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1793
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public clearPriority()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2043
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2044
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public clearTriggeringConditions()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2181
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2182
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public clearVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1841
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1842
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)V

    return-object p0
.end method

.method public containsDataBundle(Ljava/lang/String;)Z
    .locals 1

    .line 2258
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2259
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;
    .locals 1

    .line 1914
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getContent()Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundle()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2289
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundleCount()I
    .locals 1

    .line 2244
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getDataBundleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2301
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2302
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    .line 2301
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDataBundleOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2317
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2318
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2319
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    .line 2320
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getDataBundleOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2334
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2335
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2336
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getDataBundleMap()Ljava/util/Map;

    move-result-object v0

    .line 2337
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2340
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2338
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;
    .locals 1

    .line 1858
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getExperimentalPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    move-result-object v0

    return-object v0
.end method

.method public getIsTestCampaign()Z
    .locals 1

    .line 2209
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getIsTestCampaign()Z

    move-result v0

    return v0
.end method

.method public getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;
    .locals 1

    .line 1788
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPayloadCase()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$PayloadCase;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;
    .locals 1

    .line 1989
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getPriority()Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    move-result-object v0

    return-object v0
.end method

.method public getTriggeringConditions(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;
    .locals 1

    .line 2079
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditions(I)Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    move-result-object p1

    return-object p1
.end method

.method public getTriggeringConditionsCount()I
    .locals 1

    .line 2069
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditionsCount()I

    move-result v0

    return v0
.end method

.method public getTriggeringConditionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;",
            ">;"
        }
    .end annotation

    .line 2057
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2058
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getTriggeringConditionsList()Ljava/util/List;

    move-result-object v0

    .line 2057
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;
    .locals 1

    .line 1810
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->getVanillaPayload()Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    move-result-object v0

    return-object v0
.end method

.method public hasContent()Z
    .locals 1

    .line 1903
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasContent()Z

    move-result v0

    return v0
.end method

.method public hasExperimentalPayload()Z
    .locals 1

    .line 1851
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasExperimentalPayload()Z

    move-result v0

    return v0
.end method

.method public hasPriority()Z
    .locals 1

    .line 1976
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasPriority()Z

    move-result v0

    return v0
.end method

.method public hasVanillaPayload()Z
    .locals 1

    .line 1803
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->hasVanillaPayload()Z

    move-result v0

    return v0
.end method

.method public mergeContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1949
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1950
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-object p0
.end method

.method public mergeExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1881
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1882
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2200(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public mergePriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2030
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2031
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-object p0
.end method

.method public mergeVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1833
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1834
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1900(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public putAllDataBundle(Ljava/util/Map;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;"
        }
    .end annotation

    .line 2369
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2370
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putDataBundle(Ljava/lang/String;Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2353
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2354
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2355
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2356
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeDataBundle(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2278
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2279
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2280
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeTriggeringConditions(I)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2193
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2194
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3500(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;I)V

    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1937
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1938
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/MessagesProto$Content$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/MessagesProto$Content;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-object p0
.end method

.method public setContent(Lcom/google/firebase/inappmessaging/MessagesProto$Content;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1924
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1925
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2400(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/MessagesProto$Content;)V

    return-object p0
.end method

.method public setExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1873
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1874
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public setExperimentalPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1864
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1865
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2100(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ExperimentalCampaignPayload;)V

    return-object p0
.end method

.method public setIsTestCampaign(Z)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2222
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2223
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3600(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Z)V

    return-object p0
.end method

.method public setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2016
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2017
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-object p0
.end method

.method public setPriority(Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2001
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2002
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$2700(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/firebase/inappmessaging/CommonTypesProto$Priority;)V

    return-object p0
.end method

.method public setTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2103
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2104
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    .line 2105
    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;

    .line 2104
    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-object p0
.end method

.method public setTriggeringConditions(ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 2090
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 2091
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$3000(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;ILcom/google/firebase/inappmessaging/CommonTypesProto$TriggeringCondition;)V

    return-object p0
.end method

.method public setVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1825
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1826
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method

.method public setVanillaPayload(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;
    .locals 1

    .line 1816
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->copyOnWrite()V

    .line 1817
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;->access$1800(Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$ThickContent;Lcom/google/internal/firebase/inappmessaging/v1/CampaignProto$VanillaCampaignPayload;)V

    return-object p0
.end method
