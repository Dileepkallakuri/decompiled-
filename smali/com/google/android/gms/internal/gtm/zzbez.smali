.class public Lcom/google/android/gms/internal/gtm/zzbez;
.super Lcom/google/android/gms/internal/gtm/zzbax;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/gtm/zzbff<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/google/android/gms/internal/gtm/zzbez<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/google/android/gms/internal/gtm/zzbax<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field protected zza:Lcom/google/android/gms/internal/gtm/zzbff;

.field protected zzb:Z

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzbff;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbff;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbax;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzc:Lcom/google/android/gms/internal/gtm/zzbff;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbff;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    return-void
.end method

.method private static final zza(Lcom/google/android/gms/internal/gtm/zzbff;Lcom/google/android/gms/internal/gtm/zzbff;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzg(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzy()Lcom/google/android/gms/internal/gtm/zzbez;

    move-result-object v0

    return-object v0
.end method

.method public final zzA()Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzB()Lcom/google/android/gms/internal/gtm/zzbff;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaw()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbhy;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbhy;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;)V

    .line 4
    throw v1
.end method

.method public zzB()Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhb;->zza()Lcom/google/android/gms/internal/gtm/zzbhb;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbhb;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbhf;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbhf;->zzf(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    return-object v0
.end method

.method public bridge synthetic zzC()Lcom/google/android/gms/internal/gtm/zzbgs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzA()Lcom/google/android/gms/internal/gtm/zzbff;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzD()Lcom/google/android/gms/internal/gtm/zzbgs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzB()Lcom/google/android/gms/internal/gtm/zzbff;

    move-result-object v0

    return-object v0
.end method

.method protected zzF()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbff;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbez;->zza(Lcom/google/android/gms/internal/gtm/zzbff;Lcom/google/android/gms/internal/gtm/zzbff;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    return-void
.end method

.method public final synthetic zzav()Lcom/google/android/gms/internal/gtm/zzbgs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzc:Lcom/google/android/gms/internal/gtm/zzbff;

    return-object v0
.end method

.method public final zzaw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbff;->zzao(Lcom/google/android/gms/internal/gtm/zzbff;Z)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic zzv()Lcom/google/android/gms/internal/gtm/zzbax;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzy()Lcom/google/android/gms/internal/gtm/zzbez;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic zzw(Lcom/google/android/gms/internal/gtm/zzbay;)Lcom/google/android/gms/internal/gtm/zzbax;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbez;->zzz(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbez;

    return-object p0
.end method

.method public final zzy()Lcom/google/android/gms/internal/gtm/zzbez;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzc:Lcom/google/android/gms/internal/gtm/zzbff;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbez;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzB()Lcom/google/android/gms/internal/gtm/zzbff;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbez;->zzz(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbez;

    return-object v0
.end method

.method public final zzz(Lcom/google/android/gms/internal/gtm/zzbff;)Lcom/google/android/gms/internal/gtm/zzbez;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbez;->zza(Lcom/google/android/gms/internal/gtm/zzbff;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-object p0
.end method
