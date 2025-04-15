.class final Lcom/google/android/gms/tagmanager/zzbo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager-api@@18.0.2"


# static fields
.field private static volatile zza:Lcom/google/android/gms/dynamite/DynamiteModule;

.field private static volatile zzb:Lcom/google/android/gms/tagmanager/zzcr;

.field private static final zzc:Ljava/util/Map;

.field private static final zzd:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zzc:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zzd:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static zza(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbo;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    const-string v1, "com.google.android.gms.tagmanager.TagManagerServiceProviderImpl"

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzct;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzcu;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbo;->zzh(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzco;

    move-result-object p0

    new-instance v2, Lcom/google/android/gms/tagmanager/zzbn;

    .line 6
    invoke-direct {v2}, Lcom/google/android/gms/tagmanager/zzbn;-><init>()V

    .line 7
    invoke-interface {v0, v1, p0, v2}, Lcom/google/android/gms/tagmanager/zzcu;->getService(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/internal/gtm/zzhm;

    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/google/android/gms/internal/gtm/zzhm;->asBinder()Landroid/os/IBinder;

    move-result-object p0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 10
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 9
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method static bridge synthetic zzb(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic zzc()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zzc:Ljava/util/Map;

    return-object v0
.end method

.method static bridge synthetic zzd()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zzd:Ljava/util/Map;

    return-object v0
.end method

.method static zze(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbo;->zzi(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzcr;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/tagmanager/zzbo;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbo;->zzh(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzco;

    move-result-object p0

    new-instance v3, Lcom/google/android/gms/tagmanager/zzbn;

    .line 4
    invoke-direct {v3}, Lcom/google/android/gms/tagmanager/zzbn;-><init>()V

    .line 5
    invoke-interface {v0, v2, p0, v3}, Lcom/google/android/gms/tagmanager/zzcr;->initialize(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :try_start_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 7
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static zzf(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzi(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzcr;

    move-result-object v0

    const-class v6, Lcom/google/android/gms/tagmanager/zzbo;

    monitor-enter v6

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbo;->zza:Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->getModuleContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v3

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbo;->zzh(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzco;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/tagmanager/zzbn;

    .line 5
    invoke-direct {v5}, Lcom/google/android/gms/tagmanager/zzbn;-><init>()V

    move-object v1, p0

    .line 6
    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzcr;->previewIntent(Landroid/content/Intent;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    monitor-exit v6

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 7
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 8
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zza:Lcom/google/android/gms/dynamite/DynamiteModule;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/tagmanager/zzbo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zza:Lcom/google/android/gms/dynamite/DynamiteModule;

    sget-object v2, Lcom/google/android/gms/tagmanager/zzbo;->zza:Lcom/google/android/gms/dynamite/DynamiteModule;

    if-nez v2, :cond_0

    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    const-string v2, "com.google.android.gms.tagmanager"

    .line 2
    invoke-static {p0, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/tagmanager/zzbo;->zza:Lcom/google/android/gms/dynamite/DynamiteModule;

    move-object v0, p0

    .line 3
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private static zzh(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzco;
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/measurement/AppMeasurement;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/measurement/AppMeasurement;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/tagmanager/zzbm;

    .line 2
    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzbm;-><init>(Lcom/google/android/gms/measurement/AppMeasurement;)V

    return-object v0
.end method

.method private static zzi(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzcr;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zzb:Lcom/google/android/gms/tagmanager/zzcr;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/tagmanager/zzbo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/tagmanager/zzbo;->zzb:Lcom/google/android/gms/tagmanager/zzcr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzbo;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object p0

    const-string v0, "com.google.android.gms.tagmanager.TagManagerApiImpl"

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->instantiate(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/tagmanager/zzcq;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/tagmanager/zzcr;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/tagmanager/zzbo;->zzb:Lcom/google/android/gms/tagmanager/zzcr;
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    .line 3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static zzj(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9

    const-string v0, " doesn\'t have an accessible no-arg constructor"

    const-string v1, "GoogleTagManagerAPI"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2
    invoke-virtual {v3}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 3
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_1

    aget-object v8, v4, v7

    .line 4
    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v8, :cond_0

    :try_start_1
    new-array p1, v6, [Ljava/lang/Class;

    .line 7
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v3, v6, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    move-object v2, p0

    goto/16 :goto_1

    .line 10
    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 11
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is an abstract class."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 12
    :catch_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " construction threw an exception."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 13
    :catch_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 14
    :catch_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " doesn\'t have a valid no-arg constructor"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t implement "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " interface."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_1

    :catch_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " can\'t be found in the application."

    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 14
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-object v2
.end method
