.class public final Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;
.super Ljava/lang/Object;
.source "FunctionsMultiResourceComponent_Factory.java"

# interfaces
.implements Lcom/google/firebase/functions/dagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/firebase/functions/dagger/internal/Factory<",
        "Lcom/google/firebase/functions/FunctionsMultiResourceComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final functionsFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/FunctionsMultiResourceComponent$FirebaseFunctionsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/FunctionsMultiResourceComponent$FirebaseFunctionsFactory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;->functionsFactoryProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/firebase/functions/FunctionsMultiResourceComponent$FirebaseFunctionsFactory;",
            ">;)",
            "Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;"
        }
    .end annotation

    .line 32
    new-instance v0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;

    invoke-direct {v0, p0}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Object;)Lcom/google/firebase/functions/FunctionsMultiResourceComponent;
    .locals 1

    .line 36
    new-instance v0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    check-cast p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent$FirebaseFunctionsFactory;

    invoke-direct {v0, p0}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent;-><init>(Lcom/google/firebase/functions/FunctionsMultiResourceComponent$FirebaseFunctionsFactory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/firebase/functions/FunctionsMultiResourceComponent;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;->functionsFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;->newInstance(Ljava/lang/Object;)Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/google/firebase/functions/FunctionsMultiResourceComponent_Factory;->get()Lcom/google/firebase/functions/FunctionsMultiResourceComponent;

    move-result-object v0

    return-object v0
.end method
