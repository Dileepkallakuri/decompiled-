.class public final Lcom/google/android/gms/internal/gtm/zzrd;
.super Lcom/google/android/gms/internal/gtm/zzqz;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field public static final zzb:Lcom/google/android/gms/internal/gtm/zzrd;

.field public static final zzc:Lcom/google/android/gms/internal/gtm/zzrd;

.field public static final zzd:Lcom/google/android/gms/internal/gtm/zzrd;

.field public static final zze:Lcom/google/android/gms/internal/gtm/zzrd;


# instance fields
.field private final zzf:Ljava/lang/String;

.field private final zzg:Z

.field private final zzh:Lcom/google/android/gms/internal/gtm/zzqz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrd;

    const-string v1, "BREAK"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrd;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrd;

    const-string v1, "NULL"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrd;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrd;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzqz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqz;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "RETURN"

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzf:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzg:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzh:Lcom/google/android/gms/internal/gtm/zzqz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzqz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzf:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzg:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzh:Lcom/google/android/gms/internal/gtm/zzqz;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final synthetic zzc()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzh:Lcom/google/android/gms/internal/gtm/zzqz;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzh:Lcom/google/android/gms/internal/gtm/zzqz;

    return-object v0
.end method

.method public final zzj()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzrd;->zzg:Z

    return v0
.end method
