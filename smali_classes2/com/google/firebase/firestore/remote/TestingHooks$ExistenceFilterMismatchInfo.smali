.class abstract Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
.super Ljava/lang/Object;
.source "TestingHooks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/TestingHooks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ExistenceFilterMismatchInfo"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(II)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
    .locals 1

    .line 129
    new-instance v0, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/remote/AutoValue_TestingHooks_ExistenceFilterMismatchInfo;-><init>(II)V

    return-object v0
.end method

.method static from(ILcom/google/firebase/firestore/remote/ExistenceFilter;)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;
    .locals 0

    .line 147
    invoke-virtual {p1}, Lcom/google/firebase/firestore/remote/ExistenceFilter;->getCount()I

    move-result p1

    invoke-static {p0, p1}, Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;->create(II)Lcom/google/firebase/firestore/remote/TestingHooks$ExistenceFilterMismatchInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method abstract existenceFilterCount()I
.end method

.method abstract localCacheCount()I
.end method
