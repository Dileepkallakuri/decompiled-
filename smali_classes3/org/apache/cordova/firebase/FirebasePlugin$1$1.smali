.class Lorg/apache/cordova/firebase/FirebasePlugin$1$1;
.super Ljava/lang/Object;
.source "FirebasePlugin.java"

# interfaces
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/firebase/FirebasePlugin$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonSerializer<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/cordova/firebase/FirebasePlugin$1;


# direct methods
.method constructor <init>(Lorg/apache/cordova/firebase/FirebasePlugin$1;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lorg/apache/cordova/firebase/FirebasePlugin$1$1;->this$1:Lorg/apache/cordova/firebase/FirebasePlugin$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public serialize(Ljava/lang/Double;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 217
    invoke-virtual {p1}, Ljava/lang/Double;->isNaN()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Double;->isInfinite()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object p2

    .line 218
    :cond_1
    :goto_0
    new-instance p2, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 215
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/cordova/firebase/FirebasePlugin$1$1;->serialize(Ljava/lang/Double;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p1

    return-object p1
.end method
