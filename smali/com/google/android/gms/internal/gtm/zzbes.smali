.class final Lcom/google/android/gms/internal/gtm/zzbes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbeq;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbeq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzber;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzber;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbes;->zza:Lcom/google/android/gms/internal/gtm/zzbeq;

    :try_start_0
    const-string v0, "com.google.protobuf.ExtensionSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbeq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbes;->zzb:Lcom/google/android/gms/internal/gtm/zzbeq;

    return-void
.end method

.method static zza()Lcom/google/android/gms/internal/gtm/zzbeq;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbes;->zzb:Lcom/google/android/gms/internal/gtm/zzbeq;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Protobuf runtime is not correctly loaded."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static zzb()Lcom/google/android/gms/internal/gtm/zzbeq;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbes;->zza:Lcom/google/android/gms/internal/gtm/zzbeq;

    return-object v0
.end method
