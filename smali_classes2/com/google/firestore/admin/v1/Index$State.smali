.class public final enum Lcom/google/firestore/admin/v1/Index$State;
.super Ljava/lang/Enum;
.source "Index.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firestore/admin/v1/Index;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firestore/admin/v1/Index$State$StateVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firestore/admin/v1/Index$State;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firestore/admin/v1/Index$State;

.field public static final enum CREATING:Lcom/google/firestore/admin/v1/Index$State;

.field public static final CREATING_VALUE:I = 0x1

.field public static final enum NEEDS_REPAIR:Lcom/google/firestore/admin/v1/Index$State;

.field public static final NEEDS_REPAIR_VALUE:I = 0x3

.field public static final enum READY:Lcom/google/firestore/admin/v1/Index$State;

.field public static final READY_VALUE:I = 0x2

.field public static final enum STATE_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$State;

.field public static final STATE_UNSPECIFIED_VALUE:I

.field public static final enum UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/admin/v1/Index$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 177
    new-instance v0, Lcom/google/firestore/admin/v1/Index$State;

    const-string v1, "STATE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$State;->STATE_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$State;

    .line 188
    new-instance v1, Lcom/google/firestore/admin/v1/Index$State;

    const-string v3, "CREATING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firestore/admin/v1/Index$State;->CREATING:Lcom/google/firestore/admin/v1/Index$State;

    .line 198
    new-instance v3, Lcom/google/firestore/admin/v1/Index$State;

    const-string v5, "READY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firestore/admin/v1/Index$State;->READY:Lcom/google/firestore/admin/v1/Index$State;

    .line 213
    new-instance v5, Lcom/google/firestore/admin/v1/Index$State;

    const-string v7, "NEEDS_REPAIR"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firestore/admin/v1/Index$State;->NEEDS_REPAIR:Lcom/google/firestore/admin/v1/Index$State;

    .line 214
    new-instance v7, Lcom/google/firestore/admin/v1/Index$State;

    const/4 v9, -0x1

    const-string v10, "UNRECOGNIZED"

    const/4 v11, 0x4

    invoke-direct {v7, v10, v11, v9}, Lcom/google/firestore/admin/v1/Index$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firestore/admin/v1/Index$State;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/firestore/admin/v1/Index$State;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v11

    .line 168
    sput-object v9, Lcom/google/firestore/admin/v1/Index$State;->$VALUES:[Lcom/google/firestore/admin/v1/Index$State;

    .line 297
    new-instance v0, Lcom/google/firestore/admin/v1/Index$State$1;

    invoke-direct {v0}, Lcom/google/firestore/admin/v1/Index$State$1;-><init>()V

    sput-object v0, Lcom/google/firestore/admin/v1/Index$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput p3, p0, Lcom/google/firestore/admin/v1/Index$State;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firestore/admin/v1/Index$State;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 287
    :cond_0
    sget-object p0, Lcom/google/firestore/admin/v1/Index$State;->NEEDS_REPAIR:Lcom/google/firestore/admin/v1/Index$State;

    return-object p0

    .line 286
    :cond_1
    sget-object p0, Lcom/google/firestore/admin/v1/Index$State;->READY:Lcom/google/firestore/admin/v1/Index$State;

    return-object p0

    .line 285
    :cond_2
    sget-object p0, Lcom/google/firestore/admin/v1/Index$State;->CREATING:Lcom/google/firestore/admin/v1/Index$State;

    return-object p0

    .line 284
    :cond_3
    sget-object p0, Lcom/google/firestore/admin/v1/Index$State;->STATE_UNSPECIFIED:Lcom/google/firestore/admin/v1/Index$State;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firestore/admin/v1/Index$State;",
            ">;"
        }
    .end annotation

    .line 294
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 307
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State$StateVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firestore/admin/v1/Index$State;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    invoke-static {p0}, Lcom/google/firestore/admin/v1/Index$State;->forNumber(I)Lcom/google/firestore/admin/v1/Index$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firestore/admin/v1/Index$State;
    .locals 1

    .line 168
    const-class v0, Lcom/google/firestore/admin/v1/Index$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firestore/admin/v1/Index$State;

    return-object p0
.end method

.method public static values()[Lcom/google/firestore/admin/v1/Index$State;
    .locals 1

    .line 168
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->$VALUES:[Lcom/google/firestore/admin/v1/Index$State;

    invoke-virtual {v0}, [Lcom/google/firestore/admin/v1/Index$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firestore/admin/v1/Index$State;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 265
    sget-object v0, Lcom/google/firestore/admin/v1/Index$State;->UNRECOGNIZED:Lcom/google/firestore/admin/v1/Index$State;

    if-eq p0, v0, :cond_0

    .line 269
    iget v0, p0, Lcom/google/firestore/admin/v1/Index$State;->value:I

    return v0

    .line 266
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
