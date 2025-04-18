.class public final Lio/grpc/internal/ReflectionLongAdderCounter;
.super Ljava/lang/Object;
.source "ReflectionLongAdderCounter.java"

# interfaces
.implements Lio/grpc/internal/LongCounter;


# static fields
.field private static final addMethod:Ljava/lang/reflect/Method;

.field private static final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private static final initializationException:Ljava/lang/RuntimeException;

.field private static final logger:Ljava/util/logging/Logger;

.field private static final one:[Ljava/lang/Object;

.field private static final sumMethod:Ljava/lang/reflect/Method;


# instance fields
.field private final instance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 30
    const-class v0, Lio/grpc/internal/ReflectionLongAdderCounter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->logger:Ljava/util/logging/Logger;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "java.util.concurrent.atomic.LongAdder"

    .line 45
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "add"

    new-array v5, v0, [Ljava/lang/Class;

    .line 47
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v5, "sum"

    new-array v6, v1, [Ljava/lang/Class;

    .line 48
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 51
    array-length v6, v3

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_1

    aget-object v8, v3, v7

    .line 52
    invoke-virtual {v8}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v9, v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v2

    :goto_1
    move-object v3, v2

    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_2

    :catchall_1
    move-exception v3

    move-object v5, v2

    goto :goto_2

    :catchall_2
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    .line 58
    :goto_2
    sget-object v6, Lio/grpc/internal/ReflectionLongAdderCounter;->logger:Ljava/util/logging/Logger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v8, "LongAdder can not be found via reflection, this is normal for JDK7 and below"

    invoke-virtual {v6, v7, v8, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v8, v2

    :goto_3
    if-nez v3, :cond_2

    if-eqz v8, :cond_2

    .line 66
    sput-object v8, Lio/grpc/internal/ReflectionLongAdderCounter;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 67
    sput-object v4, Lio/grpc/internal/ReflectionLongAdderCounter;->addMethod:Ljava/lang/reflect/Method;

    .line 68
    sput-object v5, Lio/grpc/internal/ReflectionLongAdderCounter;->sumMethod:Ljava/lang/reflect/Method;

    .line 69
    sput-object v2, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    goto :goto_4

    .line 71
    :cond_2
    sput-object v2, Lio/grpc/internal/ReflectionLongAdderCounter;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 72
    sput-object v2, Lio/grpc/internal/ReflectionLongAdderCounter;->addMethod:Ljava/lang/reflect/Method;

    .line 73
    sput-object v2, Lio/grpc/internal/ReflectionLongAdderCounter;->sumMethod:Ljava/lang/reflect/Method;

    .line 74
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    sput-object v2, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    :goto_4
    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v2, 0x1

    .line 100
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->one:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    .line 83
    :try_start_0
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->defaultConstructor:Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/grpc/internal/ReflectionLongAdderCounter;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_0
    throw v0
.end method

.method static isAvailable()Z
    .locals 1

    .line 97
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->initializationException:Ljava/lang/RuntimeException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public add(J)V
    .locals 4

    .line 105
    :try_start_0
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->addMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/grpc/internal/ReflectionLongAdderCounter;->instance:Ljava/lang/Object;

    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    sget-object p1, Lio/grpc/internal/ReflectionLongAdderCounter;->one:[Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    move-object p1, v2

    :goto_0
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 109
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 107
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public value()J
    .locals 3

    .line 116
    :try_start_0
    sget-object v0, Lio/grpc/internal/ReflectionLongAdderCounter;->sumMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/grpc/internal/ReflectionLongAdderCounter;->instance:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 120
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 118
    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
