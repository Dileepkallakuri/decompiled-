.class Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator$1;
.super Ljava/lang/Object;
.source "StructuredQuery.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;
    .locals 0

    .line 1516
    invoke-static {p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;->forNumber(I)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1513
    invoke-virtual {p0, p1}, Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator$1;->findValueByNumber(I)Lcom/google/firestore/v1/StructuredQuery$CompositeFilter$Operator;

    move-result-object p1

    return-object p1
.end method
