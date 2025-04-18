.class public Lio/grpc/okhttp/internal/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/okhttp/internal/Platform$JettyNegoProvider;,
        Lio/grpc/okhttp/internal/Platform$JdkWithJettyBootPlatform;,
        Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;,
        Lio/grpc/okhttp/internal/Platform$Android;,
        Lio/grpc/okhttp/internal/Platform$TlsExtensionType;
    }
.end annotation


# static fields
.field private static final ANDROID_SECURITY_PROVIDERS:[Ljava/lang/String;

.field private static final PLATFORM:Lio/grpc/okhttp/internal/Platform;

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final sslProvider:Ljava/security/Provider;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    const-class v0, Lio/grpc/okhttp/internal/Platform;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLProvider"

    const-string v1, "com.google.android.libraries.stitch.sslguard.SslGuardProvider"

    const-string v2, "com.google.android.gms.org.conscrypt.OpenSSLProvider"

    const-string v3, "org.conscrypt.OpenSSLProvider"

    const-string v4, "com.android.org.conscrypt.OpenSSLProvider"

    .line 85
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/Platform;->ANDROID_SECURITY_PROVIDERS:[Ljava/lang/String;

    .line 95
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->findPlatform()Lio/grpc/okhttp/internal/Platform;

    move-result-object v0

    sput-object v0, Lio/grpc/okhttp/internal/Platform;->PLATFORM:Lio/grpc/okhttp/internal/Platform;

    return-void
.end method

.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lio/grpc/okhttp/internal/Platform;->sslProvider:Ljava/security/Provider;

    return-void
.end method

.method public static concatLengthPrefixed(Ljava/util/List;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)[B"
        }
    .end annotation

    .line 603
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 604
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 605
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/grpc/okhttp/internal/Protocol;

    .line 606
    sget-object v4, Lio/grpc/okhttp/internal/Protocol;->HTTP_1_0:Lio/grpc/okhttp/internal/Protocol;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 607
    :cond_0
    invoke-virtual {v3}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 608
    invoke-virtual {v3}, Lio/grpc/okhttp/internal/Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->readByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static findPlatform()Lio/grpc/okhttp/internal/Platform;
    .locals 12

    .line 160
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->getAndroidSecurityProvider()Ljava/security/Provider;

    move-result-object v7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v7, :cond_4

    .line 163
    new-instance v3, Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    const-string v5, "setUseSessionTickets"

    invoke-direct {v3, v1, v5, v4}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 165
    new-instance v4, Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v5, v0, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    const-string v6, "setHostname"

    invoke-direct {v4, v1, v6, v5}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 169
    new-instance v5, Lio/grpc/okhttp/internal/OptionalMethod;

    const-string v6, "getAlpnSelectedProtocol"

    new-array v8, v2, [Ljava/lang/Class;

    const-class v9, [B

    invoke-direct {v5, v9, v6, v8}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 171
    new-instance v6, Lio/grpc/okhttp/internal/OptionalMethod;

    new-array v8, v0, [Ljava/lang/Class;

    aput-object v9, v8, v2

    const-string v9, "setAlpnProtocols"

    invoke-direct {v6, v1, v9, v8}, Lio/grpc/okhttp/internal/OptionalMethod;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    :try_start_0
    const-string v8, "android.net.TrafficStats"

    .line 176
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v9, "tagSocket"

    new-array v10, v0, [Ljava/lang/Class;

    .line 177
    const-class v11, Ljava/net/Socket;

    aput-object v11, v10, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v10, "untagSocket"

    new-array v0, v0, [Ljava/lang/Class;

    .line 178
    const-class v11, Ljava/net/Socket;

    aput-object v11, v0, v2

    invoke-virtual {v8, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v0

    goto :goto_0

    :catch_0
    move-object v9, v1

    :catch_1
    move-object v8, v1

    .line 186
    :goto_0
    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GmsCore_OpenSSL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 187
    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Conscrypt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 188
    invoke-virtual {v7}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ssl_Guard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 190
    :cond_0
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->isAtLeastAndroid5()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    sget-object v0, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    goto :goto_2

    .line 192
    :cond_1
    invoke-static {}, Lio/grpc/okhttp/internal/Platform;->isAtLeastAndroid41()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    sget-object v0, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->NPN:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    goto :goto_2

    .line 195
    :cond_2
    sget-object v0, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->NONE:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    goto :goto_2

    .line 189
    :cond_3
    :goto_1
    sget-object v0, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->ALPN_AND_NPN:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    :goto_2
    move-object v10, v0

    .line 197
    new-instance v11, Lio/grpc/okhttp/internal/Platform$Android;

    move-object v0, v11

    move-object v1, v3

    move-object v2, v4

    move-object v3, v9

    move-object v4, v8

    move-object v8, v10

    invoke-direct/range {v0 .. v8}, Lio/grpc/okhttp/internal/Platform$Android;-><init>(Lio/grpc/okhttp/internal/OptionalMethod;Lio/grpc/okhttp/internal/OptionalMethod;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/grpc/okhttp/internal/OptionalMethod;Lio/grpc/okhttp/internal/OptionalMethod;Ljava/security/Provider;Lio/grpc/okhttp/internal/Platform$TlsExtensionType;)V

    return-object v11

    .line 209
    :cond_4
    :try_start_2
    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v3
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    const-string v4, "TLS"

    .line 218
    invoke-static {v4, v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 219
    invoke-virtual {v4, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 220
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v4

    .line 221
    new-instance v5, Lio/grpc/okhttp/internal/Platform$1;

    invoke-direct {v5}, Lio/grpc/okhttp/internal/Platform$1;-><init>()V

    .line 222
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    new-array v6, v2, [Ljava/lang/Object;

    .line 229
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    new-instance v4, Lio/grpc/okhttp/internal/Platform$2;

    invoke-direct {v4}, Lio/grpc/okhttp/internal/Platform$2;-><init>()V

    .line 232
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    .line 239
    new-instance v5, Lio/grpc/okhttp/internal/Platform$3;

    invoke-direct {v5}, Lio/grpc/okhttp/internal/Platform$3;-><init>()V

    .line 240
    invoke-static {v5}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Method;

    .line 247
    new-instance v6, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;

    invoke-direct {v6, v3, v4, v5, v1}, Lio/grpc/okhttp/internal/Platform$JdkAlpnPlatform;-><init>(Ljava/security/Provider;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lio/grpc/okhttp/internal/Platform$1;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/security/PrivilegedActionException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2

    return-object v6

    :catch_2
    :try_start_4
    const-string v1, "org.eclipse.jetty.alpn.ALPN"

    .line 263
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v4, "org.eclipse.jetty.alpn.ALPN$Provider"

    .line 264
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ClientProvider"

    .line 265
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-string v5, "org.eclipse.jetty.alpn.ALPN$ServerProvider"

    .line 266
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    const-string v5, "put"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    .line 267
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v2

    aput-object v4, v6, v0

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v4, "get"

    new-array v6, v0, [Ljava/lang/Class;

    .line 268
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v6, v2

    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    const-string v4, "remove"

    new-array v0, v0, [Ljava/lang/Class;

    .line 269
    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v0, v2

    invoke-virtual {v1, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 270
    new-instance v0, Lio/grpc/okhttp/internal/Platform$JdkWithJettyBootPlatform;

    move-object v4, v0

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lio/grpc/okhttp/internal/Platform$JdkWithJettyBootPlatform;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;Ljava/security/Provider;)V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3

    return-object v0

    .line 280
    :catch_3
    new-instance v0, Lio/grpc/okhttp/internal/Platform;

    invoke-direct {v0, v3}, Lio/grpc/okhttp/internal/Platform;-><init>(Ljava/security/Provider;)V

    return-object v0

    :catch_4
    move-exception v0

    .line 211
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static get()Lio/grpc/okhttp/internal/Platform;
    .locals 1

    .line 98
    sget-object v0, Lio/grpc/okhttp/internal/Platform;->PLATFORM:Lio/grpc/okhttp/internal/Platform;

    return-object v0
.end method

.method private static getAndroidSecurityProvider()Ljava/security/Provider;
    .locals 10

    .line 312
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    .line 313
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 314
    sget-object v5, Lio/grpc/okhttp/internal/Platform;->ANDROID_SECURITY_PROVIDERS:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_1

    aget-object v8, v5, v7

    .line 315
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 316
    sget-object v0, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Found registered provider {0}"

    invoke-virtual {v0, v1, v2, v8}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v4

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    :cond_2
    sget-object v0, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "Unable to find Conscrypt"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private static isAtLeastAndroid41()Z
    .locals 4

    .line 297
    :try_start_0
    const-class v0, Lio/grpc/okhttp/internal/Platform;

    .line 298
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.app.ActivityOptions"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 302
    sget-object v1, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find class"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static isAtLeastAndroid5()Z
    .locals 4

    .line 285
    :try_start_0
    const-class v0, Lio/grpc/okhttp/internal/Platform;

    .line 286
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "android.net.Network"

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 290
    sget-object v1, Lio/grpc/okhttp/internal/Platform;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Can\'t find class"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public afterHandshake(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    return-void
.end method

.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/grpc/okhttp/internal/Protocol;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1, p2, p3}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    return-void
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "OkHttp"

    return-object v0
.end method

.method public getProvider()Ljava/security/Provider;
    .locals 1

    .line 123
    iget-object v0, p0, Lio/grpc/okhttp/internal/Platform;->sslProvider:Ljava/security/Provider;

    return-object v0
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getTlsExtensionType()Lio/grpc/okhttp/internal/Platform$TlsExtensionType;
    .locals 1

    .line 128
    sget-object v0, Lio/grpc/okhttp/internal/Platform$TlsExtensionType;->NONE:Lio/grpc/okhttp/internal/Platform$TlsExtensionType;

    return-object v0
.end method

.method public logW(Ljava/lang/String;)V
    .locals 1

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    return-void
.end method
