.class public interface abstract Lcom/google/firebase/functions/FunctionsComponent$MainModule;
.super Ljava/lang/Object;
.source "FunctionsComponent.java"


# annotations
.annotation runtime Lcom/google/firebase/functions/dagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/functions/FunctionsComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MainModule"
.end annotation


# direct methods
.method public static bindProjectId(Lcom/google/firebase/FirebaseOptions;)Ljava/lang/String;
    .locals 0
    .annotation runtime Lcom/google/firebase/functions/dagger/Provides;
    .end annotation

    .annotation runtime Ljavax/inject/Named;
        value = "projectId"
    .end annotation

    .line 72
    invoke-virtual {p0}, Lcom/google/firebase/FirebaseOptions;->getProjectId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract contextProvider(Lcom/google/firebase/functions/FirebaseContextProvider;)Lcom/google/firebase/functions/ContextProvider;
    .annotation runtime Lcom/google/firebase/functions/dagger/Binds;
    .end annotation
.end method
