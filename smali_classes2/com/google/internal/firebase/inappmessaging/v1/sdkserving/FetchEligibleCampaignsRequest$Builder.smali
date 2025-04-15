.class public final Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "FetchEligibleCampaignsRequest.java"

# interfaces
.implements Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;",
        "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;",
        ">;",
        "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequestOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 442
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$000()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$1;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAlreadySeenCampaigns(Ljava/lang/Iterable;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;",
            ">;)",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;"
        }
    .end annotation

    .line 698
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 699
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1000(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAlreadySeenCampaigns(ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 683
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 684
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    .line 685
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 684
    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$900(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    return-object p0
.end method

.method public addAlreadySeenCampaigns(ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 655
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 656
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$900(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    return-object p0
.end method

.method public addAlreadySeenCampaigns(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 669
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 670
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$800(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    return-object p0
.end method

.method public addAlreadySeenCampaigns(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 641
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 642
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$800(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    return-object p0
.end method

.method public clearAlreadySeenCampaigns()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 711
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 712
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1100(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;)V

    return-object p0
.end method

.method public clearClientSignals()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 795
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 796
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1500(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;)V

    return-object p0
.end method

.method public clearProjectNumber()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 500
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$200(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;)V

    return-object p0
.end method

.method public clearRequestingClientApp()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 563
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$600(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;)V

    return-object p0
.end method

.method public getAlreadySeenCampaigns(I)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getAlreadySeenCampaigns(I)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    move-result-object p1

    return-object p1
.end method

.method public getAlreadySeenCampaignsCount()I
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getAlreadySeenCampaignsCount()I

    move-result v0

    return v0
.end method

.method public getAlreadySeenCampaignsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    .line 578
    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getAlreadySeenCampaignsList()Ljava/util/List;

    move-result-object v0

    .line 577
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClientSignals()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getClientSignals()Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    move-result-object v0

    return-object v0
.end method

.method public getProjectNumber()Ljava/lang/String;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getProjectNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjectNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getProjectNumberBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRequestingClientApp()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getRequestingClientApp()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public hasClientSignals()Z
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->hasClientSignals()Z

    move-result v0

    return v0
.end method

.method public hasRequestingClientApp()Z
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->hasRequestingClientApp()Z

    move-result v0

    return v0
.end method

.method public mergeClientSignals(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 784
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 785
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1400(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V

    return-object p0
.end method

.method public mergeRequestingClientApp(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 555
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 556
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$500(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;)V

    return-object p0
.end method

.method public removeAlreadySeenCampaigns(I)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 724
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1200(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;I)V

    return-object p0
.end method

.method public setAlreadySeenCampaigns(ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 627
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 628
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    .line 629
    invoke-virtual {p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;

    .line 628
    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$700(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    return-object p0
.end method

.method public setAlreadySeenCampaigns(ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 613
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 614
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1, p2}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$700(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;ILcom/google/internal/firebase/inappmessaging/v1/sdkserving/CampaignImpression;)V

    return-object p0
.end method

.method public setClientSignals(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 773
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {p1}, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1300(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V

    return-object p0
.end method

.method public setClientSignals(Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 759
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 760
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$1300(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/developers/mobile/targeting/proto/ClientSignalsProto$ClientSignals;)V

    return-object p0
.end method

.method public setProjectNumber(Ljava/lang/String;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 485
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 486
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$100(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Ljava/lang/String;)V

    return-object p0
.end method

.method public setProjectNumberBytes(Lcom/google/protobuf/ByteString;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 516
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$300(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setRequestingClientApp(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo$Builder;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 547
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 548
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-virtual {p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$400(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;)V

    return-object p0
.end method

.method public setRequestingClientApp(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->copyOnWrite()V

    .line 539
    iget-object v0, p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    invoke-static {v0, p1}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->access$400(Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/ClientAppInfo;)V

    return-object p0
.end method
