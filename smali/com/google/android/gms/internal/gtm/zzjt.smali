.class final Lcom/google/android/gms/internal/gtm/zzjt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field public static final zza:[Ljava/lang/String;


# instance fields
.field private final zzb:Ljava/lang/String;

.field private final zzc:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzb;->zzr:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzb;->zzs:Lcom/google/android/gms/internal/gtm/zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzb;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzjt;->zza:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjt;->zzb:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/internal/gtm/zzjt;->zza:[Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjt;->zzc:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "regex"

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjt;->zzb:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjt;->zzc:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjt;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzb()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjt;->zzc:[Ljava/lang/String;

    return-object v0
.end method
