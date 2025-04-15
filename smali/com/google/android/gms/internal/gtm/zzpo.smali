.class public final Lcom/google/android/gms/internal/gtm/zzpo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field final zza:Ljava/util/Map;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzqa;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private final zze:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzqa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/gtm/zzqa;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    .line 3
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zza:Ljava/util/Map;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zzb:Landroid/content/Context;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zzd:Lcom/google/android/gms/common/util/Clock;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zze:Ljava/util/Map;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzpo;)Lcom/google/android/gms/internal/gtm/zzqa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    return-object p0
.end method


# virtual methods
.method final zzb(Lcom/google/android/gms/internal/gtm/zzpt;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V
    .locals 16

    move-object/from16 v9, p0

    move-object/from16 v5, p2

    if-nez p3, :cond_0

    const-string v0, "Starting to fetch a new resource"

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_0
    move/from16 v6, p3

    .line 2
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v6, v0, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "There is no valid resource for the container: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzpv;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x10

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    add-int/lit8 v6, v6, -0x1

    .line 6
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/internal/gtm/zzpv;-><init>(Lcom/google/android/gms/common/api/Status;ILcom/google/android/gms/internal/gtm/zzpu;Lcom/google/android/gms/internal/gtm/zzqs;)V

    move-object/from16 v7, p4

    .line 5
    invoke-interface {v7, v1}, Lcom/google/android/gms/internal/gtm/zzpl;->zza(Lcom/google/android/gms/internal/gtm/zzpv;)V

    return-void

    :cond_1
    move-object/from16 v7, p4

    .line 7
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Attempting to fetch container "

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from the default resource"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzd()Ljava/lang/String;

    move-result-object v11

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzc()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzpm;

    const/4 v2, 0x2

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzps;->zza:Lcom/google/android/gms/internal/gtm/zzpp;

    const/4 v8, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/gtm/zzpm;-><init>(Lcom/google/android/gms/internal/gtm/zzpo;ILcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpp;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    .line 29
    invoke-virtual {v10, v11, v12, v13}, Lcom/google/android/gms/internal/gtm/zzqa;->zzc(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown fetching source: "

    .line 30
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from a saved resource"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v10, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzd()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzpm;

    const/4 v2, 0x1

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzps;->zza:Lcom/google/android/gms/internal/gtm/zzpp;

    const/4 v8, 0x0

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/gtm/zzpm;-><init>(Lcom/google/android/gms/internal/gtm/zzpo;ILcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpp;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    .line 23
    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/internal/gtm/zzqa;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzpk;)V

    return-void

    .line 8
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v0

    iget-object v3, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zza:Ljava/util/Map;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzpn;

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zza()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzph;->zzg()Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 17
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzpn;->zza()J

    move-result-wide v3

    goto :goto_1

    .line 18
    :cond_6
    iget-object v3, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zzc:Lcom/google/android/gms/internal/gtm/zzqa;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/gtm/zzqa;->zza(Ljava/lang/String;)J

    move-result-wide v3

    :goto_1
    const-wide/32 v10, 0xdbba0

    add-long/2addr v3, v10

    .line 17
    iget-object v8, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zzd:Lcom/google/android/gms/common/util/Clock;

    .line 12
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v3, v3, v10

    if-ltz v3, :cond_7

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    .line 18
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/gtm/zzpo;->zzb(Lcom/google/android/gms/internal/gtm/zzpt;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    return-void

    .line 10
    :cond_7
    :goto_2
    iget-object v1, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zze:Ljava/util/Map;

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zzc()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzqg;

    if-nez v1, :cond_8

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzqg;

    .line 14
    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzqg;-><init>()V

    iget-object v3, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zze:Ljava/util/Map;

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/gtm/zzpt;->zzc()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    move-object v10, v1

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from network"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v11, v9, Lcom/google/android/gms/internal/gtm/zzpo;->zzb:Landroid/content/Context;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzpm;

    const/4 v2, 0x0

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzps;->zza:Lcom/google/android/gms/internal/gtm/zzpp;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/gtm/zzpm;-><init>(Lcom/google/android/gms/internal/gtm/zzpo;ILcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpp;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    const-wide/16 v13, 0x0

    move-object/from16 v12, p1

    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/gtm/zzqg;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzpt;JLcom/google/android/gms/internal/gtm/zzpk;)V

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V
    .locals 11

    .line 1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzpt;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gtm/zzpt;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzph;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzhv;->zzd()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzhv;->zzc()Ljava/lang/String;

    move-result-object v2

    move-object v6, p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v8, v1

    goto :goto_0

    :cond_0
    move-object v6, p1

    :cond_1
    move v8, v5

    .line 4
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzhv;->zza()Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzhv;->zzb()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    move-object v4, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 5
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/gtm/zzph;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/gtm/zzpt;->zzb(Lcom/google/android/gms/internal/gtm/zzph;)Lcom/google/android/gms/internal/gtm/zzpt;

    .line 7
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/gtm/zzpo;->zzb(Lcom/google/android/gms/internal/gtm/zzpt;Ljava/util/List;ILcom/google/android/gms/internal/gtm/zzpl;Lcom/google/android/gms/internal/gtm/zzgu;)V

    return-void
.end method

.method final zzd(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/internal/gtm/zzpu;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzpu;->zzb()Lcom/google/android/gms/internal/gtm/zzph;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzph;->zzb()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzpu;->zzc()Lcom/google/android/gms/internal/gtm/zzqj;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zza:Ljava/util/Map;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzpn;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zzd:Lcom/google/android/gms/common/util/Clock;

    .line 5
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzpn;->zzc(J)V

    .line 6
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    if-ne p1, v1, :cond_0

    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzpn;->zzd(Lcom/google/android/gms/common/api/Status;)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gtm/zzpn;->zzb(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zza:Ljava/util/Map;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzpn;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzpo;->zzd:Lcom/google/android/gms/common/util/Clock;

    .line 9
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, p2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzpn;-><init>(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;J)V

    .line 10
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
