.class public abstract Lio/grpc/ClientStreamTracer;
.super Lio/grpc/StreamTracer;
.source "ClientStreamTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/ClientStreamTracer$StreamInfo;,
        Lio/grpc/ClientStreamTracer$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lio/grpc/StreamTracer;-><init>()V

    return-void
.end method


# virtual methods
.method public inboundHeaders()V
    .locals 0

    return-void
.end method

.method public inboundTrailers(Lio/grpc/Metadata;)V
    .locals 0

    return-void
.end method

.method public outboundHeaders()V
    .locals 0

    return-void
.end method

.method public streamCreated(Lio/grpc/Attributes;Lio/grpc/Metadata;)V
    .locals 0

    return-void
.end method
