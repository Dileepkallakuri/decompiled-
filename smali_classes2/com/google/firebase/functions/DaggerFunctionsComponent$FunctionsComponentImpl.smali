.class final Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;
.super Ljava/lang/Object;
.source "DaggerFunctionsComponent.java"

# interfaces
.implements Lcom/google/firebase/functions/FunctionsComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/functions/DaggerFunctionsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FunctionsComponentImpl"
.end annotation


# instance fields
.field private bindProjectIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/FirebaseContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseFunctionsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/FunctionsMultiResourceComponent$FirebaseFunctionsFactory;",
            ">;"
        }
    .end annotation
.end field

.field private firebaseFunctionsProvider:Lcom/google/firebase/functions/FirebaseFunctions_Factory;

.field private final functionsComponentImpl:Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;

.field private functionsMultiResourceComponentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/FunctionsMultiResourceComponent;",
            ">;"
        }
    .end annotation
.end field

.field private setAppCheckProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private setApplicationContextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private setAuthProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;>;"
        }
    .end annotation
.end field

.field private setFirebaseOptionsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/FirebaseOptions;",
            ">;"
        }
    .end annotation
.end field

.field private setIidProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;>;"
        }
    .end annotation
.end field

.field private setLiteExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private setUiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/FirebaseOptions;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p0, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->functionsComponentImpl:Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;

    .line 133
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->initialize(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Deferred;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Deferred;Lcom/google/firebase/functions/DaggerFunctionsComponent$1;)V
    .locals 0

    .line 100
    invoke-direct/range {p0 .. p7}, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;-><init>(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Deferred;)V

    return-void
.end method

.method private initialize(Landroid/content/Context;Lcom/google/firebase/FirebaseOptions;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Provider;Lcom/google/firebase/inject/Deferred;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/firebase/FirebaseOptions;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/auth/internal/InternalAuthProvider;",
            ">;",
            "Lcom/google/firebase/inject/Provider<",
            "Lcom/google/firebase/iid/internal/FirebaseInstanceIdInternal;",
            ">;",
            "Lcom/google/firebase/inject/Deferred<",
            "Lcom/google/firebase/appcheck/interop/InteropAppCheckTokenProvider;",
            ">;)V"
        }
    .end annotation

    .line 143
    invoke-static {p1}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setApplicationContextProvider:Ljavax/inject/Provider;

    .line 144
    invoke-static {p2}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setFirebaseOptionsProvider:Ljavax/inject/Provider;

    .line 145
    invoke-static {p1}, Lcom/google/firebase/functions/FunctionsComponent_MainModule_BindProjectIdFactory;->create(Ljavax/inject/Provider;)Lcom/google/firebase/functions/FunctionsComponent_MainModule_BindProjectIdFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->bindProjectIdProvider:Ljavax/inject/Provider;

    .line 146
    invoke-static {p5}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setAuthProvider:Ljavax/inject/Provider;

    .line 147
    invoke-static {p6}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setIidProvider:Ljavax/inject/Provider;

    .line 148
    invoke-static {p7}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setAppCheckProvider:Ljavax/inject/Provider;

    .line 149
    invoke-static {p3}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setLiteExecutorProvider:Ljavax/inject/Provider;

    .line 150
    iget-object p2, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setAuthProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setIidProvider:Ljavax/inject/Provider;

    iget-object p5, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setAppCheckProvider:Ljavax/inject/Provider;

    invoke-static {p2, p3, p5, p1}, Lcom/google/firebase/functions/FirebaseContextProvider_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/functions/FirebaseContextProvider_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/functions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->firebaseContextProvider:Ljavax/inject/Provider;

    .line 151
    invoke-static {p4}, Lcom/google/firebase/functions/dagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Lcom/google/firebase/functions/dagger/internal/Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setUiExecutorProvider:Ljavax/inject/Provider;

    .line 152
    iget-object p2, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setApplicationContextProvider:Ljavax/inject/Provider;

    iget-object p3, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->bindProjectIdProvider:Ljavax/inject/Provider;

    iget-object p4, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->firebaseContextProvider:Ljavax/inject/Provider;

    iget-object p5, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->setLiteExecutorProvider:Ljavax/inject/Provider;

    invoke-static {p2, p3, p4, p5, p1}, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/functions/FirebaseFunctions_Factory;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->firebaseFunctionsProvider:Lcom/google/firebase/functions/FirebaseFunctions_Factory;

    .line 153
    invoke-static {p1}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_FirebaseFunctionsFactory_Impl;->create(Lcom/google/firebase/functions/FirebaseFunctions_Factory;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->firebaseFunctionsFactoryProvider:Ljavax/inject/Provider;

    .line 154
    invoke-static {p1}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;->create(Ljavax/inject/Provider;)Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/functions/dagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->functionsMultiResourceComponentProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public getMultiResourceComponent()Lcom/google/firebase/functions/FunctionsMultiResourceComponent;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/firebase/functions/DaggerFunctionsComponent$FunctionsComponentImpl;->functionsMultiResourceComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    return-object v0
.end method
