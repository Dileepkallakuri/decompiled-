.class Lio/grpc/internal/DelayedClientCall$DelayedListener$2;
.super Ljava/lang/Object;
.source "DelayedClientCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/grpc/internal/DelayedClientCall$DelayedListener;->onMessage(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

.field final synthetic val$message:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lio/grpc/internal/DelayedClientCall$DelayedListener;Ljava/lang/Object;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;->this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    iput-object p2, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;->val$message:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 478
    iget-object v0, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;->this$0:Lio/grpc/internal/DelayedClientCall$DelayedListener;

    invoke-static {v0}, Lio/grpc/internal/DelayedClientCall$DelayedListener;->access$400(Lio/grpc/internal/DelayedClientCall$DelayedListener;)Lio/grpc/ClientCall$Listener;

    move-result-object v0

    iget-object v1, p0, Lio/grpc/internal/DelayedClientCall$DelayedListener$2;->val$message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lio/grpc/ClientCall$Listener;->onMessage(Ljava/lang/Object;)V

    return-void
.end method
