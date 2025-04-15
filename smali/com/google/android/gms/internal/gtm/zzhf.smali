.class final Lcom/google/android/gms/internal/gtm/zzhf;
.super Ljava/lang/Thread;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzhd;


# static fields
.field private static zza:Lcom/google/android/gms/internal/gtm/zzhf;


# instance fields
.field private final zzb:Ljava/util/concurrent/LinkedBlockingQueue;

.field private volatile zzc:Z

.field private volatile zzd:Z

.field private volatile zze:Lcom/google/android/gms/internal/gtm/zzhg;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "GAThread"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzd:Z

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzg:Lcom/google/android/gms/common/util/Clock;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzf:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzf:Landroid/content/Context;

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzhf;->start()V

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzhf;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzf:Landroid/content/Context;

    return-object p0
.end method

.method static zzd(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzhf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzhf;->zza:Lcom/google/android/gms/internal/gtm/zzhf;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzhf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/gtm/zzhf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzhf;->zza:Lcom/google/android/gms/internal/gtm/zzhf;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzhf;->zza:Lcom/google/android/gms/internal/gtm/zzhf;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzhf;)Lcom/google/android/gms/internal/gtm/zzhg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zze:Lcom/google/android/gms/internal/gtm/zzhg;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/gtm/zzhf;Lcom/google/android/gms/internal/gtm/zzhg;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zze:Lcom/google/android/gms/internal/gtm/zzhg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzc:Z

    if-nez v1, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 4
    :goto_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 5
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 7
    invoke-virtual {v2}, Ljava/io/PrintStream;->flush()V

    new-instance v0, Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "Error on Google TagManager Thread: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    const-string v0, "Google TagManager is shutting down."

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzc:Z

    goto :goto_0
.end method

.method public final zza(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzhf;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 12

    move-object v10, p0

    .line 1
    iget-object v0, v10, Lcom/google/android/gms/internal/gtm/zzhf;->zzg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzhe;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/gtm/zzhe;-><init>(Lcom/google/android/gms/internal/gtm/zzhf;Lcom/google/android/gms/internal/gtm/zzhd;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    iget-object v0, v10, Lcom/google/android/gms/internal/gtm/zzhf;->zzb:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    invoke-virtual {v0, v11}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method
