.class public final Lcom/google/firebase/functions/FirebaseFunctions_Factory;
.super Ljava/lang/Object;
.source "FirebaseFunctions_Factory.java"


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider2:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/ContextProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field

.field private final projectIdProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final uiExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/ContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->contextProvider:Ljavax/inject/Provider;

    .line 37
    iput-object p2, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->projectIdProvider:Ljavax/inject/Provider;

    .line 38
    iput-object p3, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->contextProvider2:Ljavax/inject/Provider;

    .line 39
    iput-object p4, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->executorProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p5, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/firebase/functions/FirebaseFunctions_Factory;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/ContextProvider;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/concurrent/Executor;",
            ">;)",
            "Lcom/google/firebase/functions/FirebaseFunctions_Factory;"
        }
    .end annotation

    .line 50
    new-instance v6, Lcom/google/firebase/functions/FirebaseFunctions_Factory;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/functions/FirebaseFunctions_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v6
.end method

.method public static newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/firebase/functions/FirebaseFunctions;
    .locals 8

    .line 55
    new-instance v7, Lcom/google/firebase/functions/FirebaseFunctions;

    move-object v4, p3

    check-cast v4, Lcom/google/firebase/functions/ContextProvider;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/functions/FirebaseFunctions;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/functions/ContextProvider;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v7
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/google/firebase/functions/FirebaseFunctions;
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->projectIdProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->contextProvider2:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->uiExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/util/concurrent/Executor;

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/google/firebase/functions/FirebaseFunctions_Factory;->newInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lcom/google/firebase/functions/FirebaseFunctions;

    move-result-object p1

    return-object p1
.end method
