.class public final Lcom/google/android/gms/internal/gtm/zzgs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzid;

.field private final zzf:Lcom/google/android/gms/internal/gtm/zzpo;

.field private final zzg:Ljava/util/concurrent/ExecutorService;

.field private final zzh:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzi:Lcom/google/android/gms/tagmanager/zzco;

.field private final zzj:Lcom/google/android/gms/common/util/Clock;

.field private final zzk:Lcom/google/android/gms/internal/gtm/zzgu;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzic;

.field private volatile zzm:I

.field private zzn:Ljava/util/List;

.field private zzo:Ljava/util/concurrent/ScheduledFuture;

.field private zzp:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzid;Lcom/google/android/gms/internal/gtm/zzpo;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/gtm/zzgu;)V
    .locals 11

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzm:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzn:Ljava/util/List;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzo:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzp:Z

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zza:Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzb:Ljava/lang/String;

    .line 3
    invoke-static/range {p5 .. p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzid;

    iput-object v3, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zze:Lcom/google/android/gms/internal/gtm/zzid;

    .line 4
    invoke-static/range {p6 .. p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzpo;

    iput-object v3, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzf:Lcom/google/android/gms/internal/gtm/zzpo;

    .line 5
    invoke-static/range {p7 .. p7}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ExecutorService;

    iput-object v3, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzg:Ljava/util/concurrent/ExecutorService;

    .line 6
    invoke-static/range {p8 .. p8}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v4, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-static/range {p9 .. p9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/tagmanager/zzco;

    iput-object v4, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzi:Lcom/google/android/gms/tagmanager/zzco;

    .line 8
    invoke-static/range {p10 .. p10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/common/util/Clock;

    iput-object v5, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzj:Lcom/google/android/gms/common/util/Clock;

    .line 9
    invoke-static/range {p11 .. p11}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzgu;

    iput-object v5, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzk:Lcom/google/android/gms/internal/gtm/zzgu;

    move-object v5, p4

    iput-object v5, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzc:Ljava/lang/String;

    move-object v5, p3

    iput-object v5, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzd:Ljava/lang/String;

    .line 10
    new-instance v5, Lcom/google/android/gms/internal/gtm/zzgz;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    const-string v8, "gtm.load"

    const-string v9, "gtm"

    const/4 v10, 0x0

    move-object p1, v5

    move-object p2, v8

    move-object p3, v6

    move-object p4, v9

    move-object/from16 p5, v7

    move/from16 p6, v10

    move-object/from16 p7, v4

    invoke-direct/range {p1 .. p7}, Lcom/google/android/gms/internal/gtm/zzgz;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzco;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/gtm/zzgs;->zzn:Ljava/util/List;

    .line 11
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Container "

    .line 12
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is scheduled for loading."

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzgn;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/gtm/zzgn;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgm;)V

    .line 13
    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzgs;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzm:I

    return p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/gtm/zzgs;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zza:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/common/util/Clock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzj:Lcom/google/android/gms/common/util/Clock;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/tagmanager/zzco;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzi:Lcom/google/android/gms/tagmanager/zzco;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzgu;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzk:Lcom/google/android/gms/internal/gtm/zzgu;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzic;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzl:Lcom/google/android/gms/internal/gtm/zzic;

    return-object p0
.end method

.method static bridge synthetic zzg(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzid;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zze:Lcom/google/android/gms/internal/gtm/zzid;

    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzpo;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzf:Lcom/google/android/gms/internal/gtm/zzpo;

    return-object p0
.end method

.method static bridge synthetic zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzb:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzn:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzg:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/gtm/zzgs;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzp:Z

    return-void
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/gtm/zzgs;Ljava/util/List;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzn:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzic;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzl:Lcom/google/android/gms/internal/gtm/zzic;

    return-void
.end method

.method static bridge synthetic zzq(Lcom/google/android/gms/internal/gtm/zzgs;I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzm:I

    return-void
.end method

.method static bridge synthetic zzr(Lcom/google/android/gms/internal/gtm/zzgs;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzo:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzb:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Refresh container "

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzh:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzgj;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzgj;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzo:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method static bridge synthetic zzu(Lcom/google/android/gms/internal/gtm/zzgs;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzp:Z

    return p0
.end method


# virtual methods
.method public final zzs()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzg:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzgi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzgi;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/gtm/zzgz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgs;->zzg:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzgo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzgo;-><init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgz;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
