.class public final enum Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
.super Ljava/lang/Enum;
.source "CompositeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/core/CompositeFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Operator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/core/CompositeFilter$Operator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

.field public static final enum AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

.field public static final enum OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 29
    new-instance v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    const-string v1, "and"

    const-string v2, "AND"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->AND:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    .line 30
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    const-string v2, "or"

    const-string v4, "OR"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->OR:Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    .line 28
    sput-object v2, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->$VALUES:[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 28
    const-class v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;
    .locals 1

    .line 28
    sget-object v0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->$VALUES:[Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/core/CompositeFilter$Operator;->text:Ljava/lang/String;

    return-object v0
.end method
