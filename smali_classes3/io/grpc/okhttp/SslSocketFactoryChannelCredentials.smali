.class public final Lio/grpc/okhttp/SslSocketFactoryChannelCredentials;
.super Ljava/lang/Object;
.source "SslSocketFactoryChannelCredentials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/net/ssl/SSLSocketFactory;)Lio/grpc/ChannelCredentials;
    .locals 2

    .line 29
    new-instance v0, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$ChannelCredentials;-><init>(Ljavax/net/ssl/SSLSocketFactory;Lio/grpc/okhttp/SslSocketFactoryChannelCredentials$1;)V

    return-object v0
.end method
