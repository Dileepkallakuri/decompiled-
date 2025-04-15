.class public final Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;
.super Ljava/lang/Object;
.source "InAppMessagingSdkServingGrpc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$MethodHandlers;,
        Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingFutureStub;,
        Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingBlockingStub;,
        Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingStub;,
        Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingImplBase;
    }
.end annotation


# static fields
.field private static final METHODID_FETCH_ELIGIBLE_CAMPAIGNS:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

.field private static volatile getFetchEligibleCampaignsMethod:Lio/grpc/MethodDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile serviceDescriptor:Lio/grpc/ServiceDescriptor;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFetchEligibleCampaignsMethod()Lio/grpc/MethodDescriptor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/grpc/MethodDescriptor<",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;",
            "Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;",
            ">;"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->getFetchEligibleCampaignsMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->getFetchEligibleCampaignsMethod:Lio/grpc/MethodDescriptor;

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lio/grpc/MethodDescriptor;->newBuilder()Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    sget-object v2, Lio/grpc/MethodDescriptor$MethodType;->UNARY:Lio/grpc/MethodDescriptor$MethodType;

    .line 37
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setType(Lio/grpc/MethodDescriptor$MethodType;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const-string v2, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

    const-string v3, "FetchEligibleCampaigns"

    .line 38
    invoke-static {v2, v3}, Lio/grpc/MethodDescriptor;->generateFullMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setFullMethodName(Ljava/lang/String;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    const/4 v2, 0x1

    .line 39
    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setSampledToLocalTracing(Z)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 41
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsRequest;

    move-result-object v2

    .line 40
    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setRequestMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;->getDefaultInstance()Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/FetchEligibleCampaignsResponse;

    move-result-object v2

    .line 42
    invoke-static {v2}, Lio/grpc/protobuf/lite/ProtoLiteUtils;->marshaller(Lcom/google/protobuf/MessageLite;)Lio/grpc/MethodDescriptor$Marshaller;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/MethodDescriptor$Builder;->setResponseMarshaller(Lio/grpc/MethodDescriptor$Marshaller;)Lio/grpc/MethodDescriptor$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lio/grpc/MethodDescriptor$Builder;->build()Lio/grpc/MethodDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->getFetchEligibleCampaignsMethod:Lio/grpc/MethodDescriptor;

    .line 46
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getServiceDescriptor()Lio/grpc/ServiceDescriptor;
    .locals 3

    .line 313
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_1

    .line 315
    const-class v1, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;

    monitor-enter v1

    .line 316
    :try_start_0
    sget-object v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    if-nez v0, :cond_0

    const-string v0, "google.internal.firebase.inappmessaging.v1.sdkserving.InAppMessagingSdkServing"

    .line 318
    invoke-static {v0}, Lio/grpc/ServiceDescriptor;->newBuilder(Ljava/lang/String;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    .line 319
    invoke-static {}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->getFetchEligibleCampaignsMethod()Lio/grpc/MethodDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/grpc/ServiceDescriptor$Builder;->addMethod(Lio/grpc/MethodDescriptor;)Lio/grpc/ServiceDescriptor$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lio/grpc/ServiceDescriptor$Builder;->build()Lio/grpc/ServiceDescriptor;

    move-result-object v0

    sput-object v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc;->serviceDescriptor:Lio/grpc/ServiceDescriptor;

    .line 322
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static newBlockingStub(Lio/grpc/Channel;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingBlockingStub;
    .locals 1

    .line 70
    new-instance v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$2;

    invoke-direct {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$2;-><init>()V

    .line 77
    invoke-static {v0, p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingBlockingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingBlockingStub;

    return-object p0
.end method

.method public static newFutureStub(Lio/grpc/Channel;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingFutureStub;
    .locals 1

    .line 85
    new-instance v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$3;

    invoke-direct {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$3;-><init>()V

    .line 92
    invoke-static {v0, p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingFutureStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingFutureStub;

    return-object p0
.end method

.method public static newStub(Lio/grpc/Channel;)Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingStub;
    .locals 1

    .line 55
    new-instance v0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$1;

    invoke-direct {v0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$1;-><init>()V

    .line 62
    invoke-static {v0, p0}, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingStub;->newStub(Lio/grpc/stub/AbstractStub$StubFactory;Lio/grpc/Channel;)Lio/grpc/stub/AbstractStub;

    move-result-object p0

    check-cast p0, Lcom/google/internal/firebase/inappmessaging/v1/sdkserving/InAppMessagingSdkServingGrpc$InAppMessagingSdkServingStub;

    return-object p0
.end method
