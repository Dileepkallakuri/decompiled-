.class public Lcom/google/firebase/firestore/Query;
.super Ljava/lang/Object;
.source "Query.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/Query$Direction;
    }
.end annotation


# instance fields
.field final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field final query:Lcom/google/firebase/firestore/core/Query;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/core/Query;

    iput-object p1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    .line 78
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object p1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-void
.end method

.method private addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/core/EventManager$ListenOptions;",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1185
    invoke-direct {p0}, Lcom/google/firebase/firestore/Query;->validateHasExplicitOrderByForLimitToLast()V

    .line 1188
    new-instance v0, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p4}, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda2;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/EventListener;)V

    .line 1202
    new-instance p4, Lcom/google/firebase/firestore/core/AsyncEventListener;

    invoke-direct {p4, p1, v0}, Lcom/google/firebase/firestore/core/AsyncEventListener;-><init>(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)V

    .line 1205
    iget-object p1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {p1, v0, p2, p4}, Lcom/google/firebase/firestore/core/FirestoreClient;->listen(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/core/QueryListener;

    move-result-object p1

    .line 1206
    new-instance p2, Lcom/google/firebase/firestore/core/ListenerRegistrationImpl;

    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 1208
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object v0

    invoke-direct {p2, v0, p1, p4}, Lcom/google/firebase/firestore/core/ListenerRegistrationImpl;-><init>(Lcom/google/firebase/firestore/core/FirestoreClient;Lcom/google/firebase/firestore/core/QueryListener;Lcom/google/firebase/firestore/core/AsyncEventListener;)V

    .line 1206
    invoke-static {p3, p2}, Lcom/google/firebase/firestore/core/ActivityScope;->bind(Landroid/app/Activity;Lcom/google/firebase/firestore/ListenerRegistration;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method private boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;
    .locals 5

    const-string v0, "Provided snapshot must not be null."

    .line 887
    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 888
    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 894
    invoke-virtual {p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object p1

    .line 895
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 902
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/OrderBy;

    .line 903
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 904
    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v1

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 906
    :cond_0
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v2

    .line 907
    invoke-static {v2}, Lcom/google/firebase/firestore/model/ServerTimestamps;->isServerTimestamp(Lcom/google/firestore/v1/Value;)Z

    move-result v3

    const-string v4, "Invalid query. You are trying to start or end a query using a document for which the field \'"

    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    .line 915
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 917
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 920
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' (used as the orderBy) does not exist."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 908
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 911
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\' is an uncommitted server timestamp. (Since the value of this field is unknown, you cannot start/end a query with it.)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 925
    :cond_3
    new-instance p1, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object p1

    .line 889
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t use a DocumentSnapshot for a document that doesn\'t exist for "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "()."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;
    .locals 6

    .line 931
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    .line 932
    array-length v1, p2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-gt v1, v2, :cond_6

    .line 940
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 941
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_5

    .line 942
    aget-object v3, p2, v2

    .line 943
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/firebase/firestore/core/OrderBy;

    .line 944
    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/OrderBy;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v4

    sget-object v5, Lcom/google/firebase/firestore/model/FieldPath;->KEY_PATH:Lcom/google/firebase/firestore/model/FieldPath;

    invoke-virtual {v4, v5}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 945
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 953
    check-cast v3, Ljava/lang/String;

    .line 954
    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 955
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. When querying a collection and ordering by FieldPath.documentId(), the value passed to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "() must be a plain document ID, but \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' contains a slash."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 963
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v4

    invoke-static {v3}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 964
    invoke-static {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 973
    invoke-static {v3}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v3

    .line 974
    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 965
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. When querying a collection group and ordering by FieldPath.documentId(), the value passed to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "() must result in a valid document path, but \'"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\' is not because it contains an odd number of segments."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 946
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Invalid query. Expected a string for document ID in "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "(), but got "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 976
    :cond_4
    iget-object v4, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v4}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/firebase/firestore/UserDataReader;->parseQueryValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    .line 977
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 981
    :cond_5
    new-instance p1, Lcom/google/firebase/firestore/core/Bound;

    invoke-direct {p1, v1, p3}, Lcom/google/firebase/firestore/core/Bound;-><init>(Ljava/util/List;Z)V

    return-object p1

    .line 933
    :cond_6
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Too many arguments provided to "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "(). The number of arguments must be less than or equal to the number of orderBy() clauses."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private conflictingOps(Lcom/google/firebase/firestore/core/FieldFilter$Operator;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
            ">;"
        }
    .end annotation

    .line 576
    sget-object v0, Lcom/google/firebase/firestore/Query$2;->$SwitchMap$com$google$firebase$firestore$core$FieldFilter$Operator:[I

    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v4, 0x4

    if-eq p1, v4, :cond_0

    .line 586
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    new-array p1, v4, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 583
    sget-object v4, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v4, p1, v0

    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v0, p1, v2

    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v0, p1, v1

    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v0, p1, v3

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    new-array p1, v2, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 581
    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v1, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-array p1, v1, [Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    .line 578
    sget-object v1, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_EQUAL:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v1, p1, v0

    sget-object v0, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    aput-object v0, p1, v2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private findOpInsideFilters(Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/Filter;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;",
            ">;)",
            "Lcom/google/firebase/firestore/core/FieldFilter$Operator;"
        }
    .end annotation

    .line 646
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/core/Filter;

    .line 647
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 648
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 649
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getViaSnapshotListener(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 1021
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 1022
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 1024
    new-instance v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v2}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    const/4 v3, 0x1

    .line 1025
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 1026
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 1027
    iput-boolean v3, v2, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    .line 1029
    sget-object v3, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, p1}, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;)V

    const/4 p1, 0x0

    .line 1030
    invoke-direct {p0, v3, v2, p1, v4}, Lcom/google/firebase/firestore/Query;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    .line 1068
    invoke-virtual {v1, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 1070
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private static internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;
    .locals 4

    .line 1286
    new-instance v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    invoke-direct {v0}, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;-><init>()V

    .line 1287
    sget-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeDocumentMetadataChanges:Z

    .line 1288
    sget-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v2, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->includeQueryMetadataChanges:Z

    .line 1289
    iput-boolean v3, v0, Lcom/google/firebase/firestore/core/EventManager$ListenOptions;->waitForSyncWhenOnline:Z

    return-object v0
.end method

.method static synthetic lambda$getViaSnapshotListener$1(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/firestore/Source;Lcom/google/firebase/firestore/QuerySnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 1

    const-string v0, "Failed to register a listener for a query result"

    if-eqz p4, :cond_0

    .line 1037
    invoke-virtual {p0, p4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void

    :cond_0
    const/4 p4, 0x0

    .line 1044
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->await(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/ListenerRegistration;

    .line 1048
    invoke-interface {p1}, Lcom/google/firebase/firestore/ListenerRegistration;->remove()V

    .line 1050
    invoke-virtual {p3}, Lcom/google/firebase/firestore/QuerySnapshot;->getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/firestore/SnapshotMetadata;->isFromCache()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/google/firebase/firestore/Source;->SERVER:Lcom/google/firebase/firestore/Source;

    if-ne p2, p1, :cond_1

    .line 1051
    new-instance p1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    const-string p2, "Failed to get documents from server. (However, these documents may exist in the local cache. Run again without setting source to SERVER to retrieve the cached documents.)"

    sget-object p3, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNAVAILABLE:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {p1, p2, p3}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1058
    :cond_1
    invoke-virtual {p0, p3}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 1063
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-array p1, p4, [Ljava/lang/Object;

    .line 1064
    invoke-static {p0, v0, p1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    new-array p1, p4, [Ljava/lang/Object;

    .line 1061
    invoke-static {p0, v0, p1}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method

.method private orderBy(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "Provided direction must not be null."

    .line 709
    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getStartAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    if-nez v0, :cond_2

    .line 715
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getEndAt()Lcom/google/firebase/firestore/core/Bound;

    move-result-object v0

    if-nez v0, :cond_1

    .line 720
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->validateOrderByField(Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 722
    sget-object v0, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    if-ne p2, v0, :cond_0

    .line 723
    sget-object p2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->ASCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    goto :goto_0

    .line 724
    :cond_0
    sget-object p2, Lcom/google/firebase/firestore/core/OrderBy$Direction;->DESCENDING:Lcom/google/firebase/firestore/core/OrderBy$Direction;

    .line 725
    :goto_0
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-static {p2, p1}, Lcom/google/firebase/firestore/core/OrderBy;->getInstance(Lcom/google/firebase/firestore/core/OrderBy$Direction;Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firebase/firestore/core/OrderBy;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->orderBy(Lcom/google/firebase/firestore/core/OrderBy;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 716
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid query. You must not call Query.endAt() or Query.endBefore() before calling Query.orderBy()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 711
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid query. You must not call Query.startAt() or Query.startAfter() before calling Query.orderBy()."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private parseCompositeFilter(Lcom/google/firebase/firestore/Filter$CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 4

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 461
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$CompositeFilter;->getFilters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/firestore/Filter;

    .line 462
    invoke-direct {p0, v2}, Lcom/google/firebase/firestore/Query;->parseFilter(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object v2

    .line 463
    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 464
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 470
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 p1, 0x0

    .line 471
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/core/Filter;

    return-object p1

    .line 473
    :cond_2
    new-instance v1, Lcom/google/firebase/firestore/core/CompositeFilter;

    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$CompositeFilter;->getOperator()Lcom/google/firebase/firestore/core/CompositeFilter$Operator;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Lcom/google/firebase/firestore/core/CompositeFilter;-><init>(Ljava/util/List;Lcom/google/firebase/firestore/core/CompositeFilter$Operator;)V

    return-object v1
.end method

.method private parseDocumentIdValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;
    .locals 3

    .line 503
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 504
    check-cast p1, Ljava/lang/String;

    .line 505
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 510
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->isCollectionGroupQuery()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. When querying a collection by FieldPath.documentId() you must provide a plain document ID, but \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\' contains a \'/\' character."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getPath()Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->fromString(Ljava/lang/String;)Lcom/google/firebase/firestore/model/ResourcePath;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/firestore/model/ResourcePath;->append(Lcom/google/firebase/firestore/model/BasePath;)Lcom/google/firebase/firestore/model/BasePath;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/model/ResourcePath;

    .line 518
    invoke-static {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->isDocumentKey(Lcom/google/firebase/firestore/model/ResourcePath;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-virtual {p0}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    invoke-static {p1}, Lcom/google/firebase/firestore/model/DocumentKey;->fromPath(Lcom/google/firebase/firestore/model/ResourcePath;)Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1

    .line 519
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. When querying a collection group by FieldPath.documentId(), the value provided must result in a valid document path, but \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not because it has an odd number of segments ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 524
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/ResourcePath;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ")."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 506
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid query. When querying with FieldPath.documentId() you must provide a valid document ID, but it was an empty string."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 528
    :cond_4
    instance-of v0, p1, Lcom/google/firebase/firestore/DocumentReference;

    if-eqz v0, :cond_5

    .line 529
    check-cast p1, Lcom/google/firebase/firestore/DocumentReference;

    .line 530
    invoke-virtual {p0}, Lcom/google/firebase/firestore/Query;->getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FirebaseFirestore;->getDatabaseId()Lcom/google/firebase/firestore/model/DatabaseId;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/DocumentReference;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/firebase/firestore/model/Values;->refValue(Lcom/google/firebase/firestore/model/DatabaseId;Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    return-object p1

    .line 532
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. When querying with FieldPath.documentId() you must provide a valid String or DocumentReference, but it was of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->typeName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseFieldFilter(Lcom/google/firebase/firestore/Filter$UnaryFilter;)Lcom/google/firebase/firestore/core/FieldFilter;
    .locals 4

    .line 418
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;->getField()Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    .line 419
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v1

    .line 420
    invoke-virtual {p1}, Lcom/google/firebase/firestore/Filter$UnaryFilter;->getValue()Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Provided field path must not be null."

    .line 421
    invoke-static {v0, v2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Provided op must not be null."

    .line 422
    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v2

    .line 425
    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/FieldPath;->isKeyField()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 426
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v2, :cond_3

    .line 431
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->parseDocumentIdValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object p1

    goto/16 :goto_4

    .line 432
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/Query;->validateDisjunctiveFilterElements(Ljava/lang/Object;Lcom/google/firebase/firestore/core/FieldFilter$Operator;)V

    .line 433
    invoke-static {}, Lcom/google/firestore/v1/ArrayValue;->newBuilder()Lcom/google/firestore/v1/ArrayValue$Builder;

    move-result-object v2

    .line 434
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 435
    invoke-direct {p0, v3}, Lcom/google/firebase/firestore/Query;->parseDocumentIdValue(Ljava/lang/Object;)Lcom/google/firestore/v1/Value;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/firestore/v1/ArrayValue$Builder;->addValues(Lcom/google/firestore/v1/Value;)Lcom/google/firestore/v1/ArrayValue$Builder;

    goto :goto_1

    .line 437
    :cond_2
    invoke-static {}, Lcom/google/firestore/v1/Value;->newBuilder()Lcom/google/firestore/v1/Value$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/firestore/v1/Value$Builder;->setArrayValue(Lcom/google/firestore/v1/ArrayValue$Builder;)Lcom/google/firestore/v1/Value$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firestore/v1/Value$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firestore/v1/Value;

    goto :goto_4

    .line 427
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid query. You can\'t perform \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' queries on FieldPath.documentId()."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 442
    :cond_4
    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v2, :cond_5

    sget-object v2, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->ARRAY_CONTAINS_ANY:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v2, :cond_6

    .line 443
    :cond_5
    invoke-direct {p0, p1, v1}, Lcom/google/firebase/firestore/Query;->validateDisjunctiveFilterElements(Ljava/lang/Object;Lcom/google/firebase/firestore/core/FieldFilter$Operator;)V

    .line 445
    :cond_6
    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 447
    invoke-virtual {v2}, Lcom/google/firebase/firestore/FirebaseFirestore;->getUserDataReader()Lcom/google/firebase/firestore/UserDataReader;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-eq v1, v3, :cond_8

    sget-object v3, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->NOT_IN:Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    if-ne v1, v3, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x1

    .line 448
    :goto_3
    invoke-virtual {v2, p1, v3}, Lcom/google/firebase/firestore/UserDataReader;->parseQueryValue(Ljava/lang/Object;Z)Lcom/google/firestore/v1/Value;

    move-result-object p1

    .line 450
    :goto_4
    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-static {v0, v1, p1}, Lcom/google/firebase/firestore/core/FieldFilter;->create(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/core/FieldFilter$Operator;Lcom/google/firestore/v1/Value;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object p1

    return-object p1
.end method

.method private parseFilter(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/core/Filter;
    .locals 4

    .line 481
    instance-of v0, p1, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v2, p1, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Parsing is only supported for Filter.UnaryFilter and Filter.CompositeFilter."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    .line 485
    check-cast p1, Lcom/google/firebase/firestore/Filter$UnaryFilter;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->parseFieldFilter(Lcom/google/firebase/firestore/Filter$UnaryFilter;)Lcom/google/firebase/firestore/core/FieldFilter;

    move-result-object p1

    return-object p1

    .line 487
    :cond_2
    check-cast p1, Lcom/google/firebase/firestore/Filter$CompositeFilter;

    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->parseCompositeFilter(Lcom/google/firebase/firestore/Filter$CompositeFilter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object p1

    return-object p1
.end method

.method private validateDisjunctiveFilterElements(Ljava/lang/Object;Lcom/google/firebase/firestore/core/FieldFilter$Operator;)V
    .locals 2

    .line 541
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 542
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Query. A non-empty array is required for \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' filters."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private validateHasExplicitOrderByForLimitToLast()V
    .locals 2

    .line 1212
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getLimitType()Lcom/google/firebase/firestore/core/Query$LimitType;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/core/Query$LimitType;->LIMIT_TO_LAST:Lcom/google/firebase/firestore/core/Query$LimitType;

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/Query$LimitType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->getExplicitOrderBy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1213
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "limitToLast() queries require specifying at least one orderBy() clause"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private validateNewFieldFilter(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/FieldFilter;)V
    .locals 3

    .line 594
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/FieldFilter;->getOperator()Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object v0

    .line 595
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/FieldFilter;->isInequality()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 596
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->inequalityField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    .line 597
    invoke-virtual {p2}, Lcom/google/firebase/firestore/core/FieldFilter;->getField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object p2

    if-eqz v1, :cond_1

    .line 599
    invoke-virtual {v1, p2}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 600
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 605
    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "All where filters with an inequality (notEqualTo, notIn, lessThan, lessThanOrEqualTo, greaterThan, or greaterThanOrEqualTo) must be on the same field. But you have filters on \'%s\' and \'%s\'"

    .line 601
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 608
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getFirstOrderByField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 610
    invoke-direct {p0, v1, p2}, Lcom/google/firebase/firestore/Query;->validateOrderByFieldMatchesInequality(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldPath;)V

    .line 613
    :cond_2
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Query;->getFilters()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/Query;->conflictingOps(Lcom/google/firebase/firestore/core/FieldFilter$Operator;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/Query;->findOpInsideFilters(Ljava/util/List;Ljava/util/List;)Lcom/google/firebase/firestore/core/FieldFilter$Operator;

    move-result-object p1

    if-eqz p1, :cond_4

    if-ne p1, v0, :cond_3

    .line 617
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Query. You cannot use more than one \'"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\' filter."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 620
    :cond_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Query. You cannot use \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' filters with \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 624
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/FieldFilter$Operator;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' filters."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    return-void
.end method

.method private validateNewFilter(Lcom/google/firebase/firestore/core/Filter;)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    .line 633
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Filter;->getFlattenedFilters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/firestore/core/FieldFilter;

    .line 634
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/firestore/Query;->validateNewFieldFilter(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/core/FieldFilter;)V

    .line 635
    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/core/Query;->filter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Query;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private validateOrderByField(Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 2

    .line 491
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->inequalityField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/Query;->getFirstOrderByField()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/Query;->validateOrderByFieldMatchesInequality(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldPath;)V

    :cond_0
    return-void
.end method

.method private validateOrderByFieldMatchesInequality(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/model/FieldPath;)V
    .locals 3

    .line 550
    invoke-virtual {p1, p2}, Lcom/google/firebase/firestore/model/FieldPath;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 551
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object p2

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 p2, 0x2

    .line 558
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/FieldPath;->canonicalString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "Invalid query. You have an inequality where filter (whereLessThan(), whereGreaterThan(), etc.) on field \'%s\' and so you must also have \'%s\' as your first orderBy() field, but your first orderBy() is currently on field \'%s\' instead."

    .line 553
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1109
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Landroid/app/Activity;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    const-string v0, "Provided activity must not be null."

    .line 1162
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided MetadataChanges value must not be null."

    .line 1163
    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided EventListener must not be null."

    .line 1164
    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 1166
    invoke-static {p2}, Lcom/google/firebase/firestore/Query;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object p2

    .line 1165
    invoke-direct {p0, v0, p2, p1, p3}, Lcom/google/firebase/firestore/Query;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1081
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1123
    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DEFAULT_CALLBACK_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    .line 1094
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {p0, p1, v0, p2}, Lcom/google/firebase/firestore/Query;->addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public addSnapshotListener(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/EventListener<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;)",
            "Lcom/google/firebase/firestore/ListenerRegistration;"
        }
    .end annotation

    const-string v0, "Provided executor must not be null."

    .line 1140
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided MetadataChanges value must not be null."

    .line 1141
    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Provided EventListener must not be null."

    .line 1142
    invoke-static {p3, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    invoke-static {p2}, Lcom/google/firebase/firestore/Query;->internalOptions(Lcom/google/firebase/firestore/MetadataChanges;)Lcom/google/firebase/firestore/core/EventManager$ListenOptions;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/firebase/firestore/Query;->addSnapshotListenerInternal(Ljava/util/concurrent/Executor;Lcom/google/firebase/firestore/core/EventManager$ListenOptions;Landroid/app/Activity;Lcom/google/firebase/firestore/EventListener;)Lcom/google/firebase/firestore/ListenerRegistration;

    move-result-object p1

    return-object p1
.end method

.method public varargs aggregate(Lcom/google/firebase/firestore/AggregateField;[Lcom/google/firebase/firestore/AggregateField;)Lcom/google/firebase/firestore/AggregateQuery;
    .locals 1

    .line 1253
    new-instance v0, Lcom/google/firebase/firestore/Query$1;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/Query$1;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/AggregateField;)V

    .line 1259
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1260
    new-instance p1, Lcom/google/firebase/firestore/AggregateQuery;

    invoke-direct {p1, p0, v0}, Lcom/google/firebase/firestore/AggregateQuery;-><init>(Lcom/google/firebase/firestore/Query;Ljava/util/List;)V

    return-object p1
.end method

.method public count()Lcom/google/firebase/firestore/AggregateQuery;
    .locals 2

    .line 1232
    new-instance v0, Lcom/google/firebase/firestore/AggregateQuery;

    invoke-static {}, Lcom/google/firebase/firestore/AggregateField;->count()Lcom/google/firebase/firestore/AggregateField$CountAggregateField;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/AggregateQuery;-><init>(Lcom/google/firebase/firestore/Query;Ljava/util/List;)V

    return-object v0
.end method

.method public endAt(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "endAt"

    const/4 v1, 0x1

    .line 858
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 859
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public varargs endAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "endAt"

    const/4 v1, 0x1

    .line 872
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 873
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public endBefore(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "endBefore"

    const/4 v1, 0x0

    .line 830
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 831
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public varargs endBefore([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "endBefore"

    const/4 v1, 0x0

    .line 844
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 845
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->endAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1268
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/Query;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1272
    :cond_1
    check-cast p1, Lcom/google/firebase/firestore/Query;

    .line 1274
    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p1, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, v3}, Lcom/google/firebase/firestore/core/Query;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object p1, p1, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public get()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 991
    sget-object v0, Lcom/google/firebase/firestore/Source;->DEFAULT:Lcom/google/firebase/firestore/Source;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/Query;->get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/Source;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/firestore/QuerySnapshot;",
            ">;"
        }
    .end annotation

    .line 1006
    invoke-direct {p0}, Lcom/google/firebase/firestore/Query;->validateHasExplicitOrderByForLimitToLast()V

    .line 1007
    sget-object v0, Lcom/google/firebase/firestore/Source;->CACHE:Lcom/google/firebase/firestore/Source;

    if-ne p1, v0, :cond_0

    .line 1008
    iget-object p1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 1009
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FirebaseFirestore;->getClient()Lcom/google/firebase/firestore/core/FirestoreClient;

    move-result-object p1

    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    .line 1010
    invoke-virtual {p1, v0}, Lcom/google/firebase/firestore/core/FirestoreClient;->getDocumentsFromLocalCache(Lcom/google/firebase/firestore/core/Query;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/firestore/util/Executors;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/Query$$ExternalSyntheticLambda1;-><init>(Lcom/google/firebase/firestore/Query;)V

    .line 1011
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1

    .line 1016
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->getViaSnapshotListener(Lcom/google/firebase/firestore/Source;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getFirestore()Lcom/google/firebase/firestore/FirebaseFirestore;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1279
    iget-object v0, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/core/Query;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 1280
    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method synthetic lambda$addSnapshotListenerInternal$2$com-google-firebase-firestore-Query(Lcom/google/firebase/firestore/EventListener;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1191
    invoke-interface {p1, v0, p3}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void

    :cond_0
    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    const-string v2, "Got event without value or error set"

    new-array p3, p3, [Ljava/lang/Object;

    .line 1195
    invoke-static {v1, v2, p3}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 1197
    new-instance p3, Lcom/google/firebase/firestore/QuerySnapshot;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {p3, p0, p2, v1}, Lcom/google/firebase/firestore/QuerySnapshot;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    .line 1198
    invoke-interface {p1, p3, v0}, Lcom/google/firebase/firestore/EventListener;->onEvent(Ljava/lang/Object;Lcom/google/firebase/firestore/FirebaseFirestoreException;)V

    return-void
.end method

.method synthetic lambda$get$0$com-google-firebase-firestore-Query(Lcom/google/android/gms/tasks/Task;)Lcom/google/firebase/firestore/QuerySnapshot;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1014
    new-instance v0, Lcom/google/firebase/firestore/QuerySnapshot;

    new-instance v1, Lcom/google/firebase/firestore/Query;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    iget-object v3, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/firestore/core/ViewSnapshot;

    iget-object v2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, p1, v2}, Lcom/google/firebase/firestore/QuerySnapshot;-><init>(Lcom/google/firebase/firestore/Query;Lcom/google/firebase/firestore/core/ViewSnapshot;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public limit(J)Lcom/google/firebase/firestore/Query;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 741
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/firestore/core/Query;->limitToFirst(J)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 738
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Query. Query limit ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is invalid. Limit must be positive."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public limitToLast(J)Lcom/google/firebase/firestore/Query;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 760
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/firestore/core/Query;->limitToLast(J)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, p2}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0

    .line 757
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Query. Query limitToLast ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is invalid. Limit must be positive."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public orderBy(Lcom/google/firebase/firestore/FieldPath;)Lcom/google/firebase/firestore/Query;
    .locals 1

    const-string v0, "Provided field path must not be null."

    .line 675
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;
    .locals 1

    const-string v0, "Provided field path must not be null."

    .line 702
    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Ljava/lang/String;)Lcom/google/firebase/firestore/Query;
    .locals 1

    .line 664
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object p1

    sget-object v0, Lcom/google/firebase/firestore/Query$Direction;->ASCENDING:Lcom/google/firebase/firestore/Query$Direction;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public orderBy(Ljava/lang/String;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 689
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/Query;->orderBy(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/Query$Direction;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public startAfter(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "startAfter"

    const/4 v1, 0x0

    .line 801
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 802
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public varargs startAfter([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "startAfter"

    const/4 v1, 0x0

    .line 816
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 817
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public startAt(Lcom/google/firebase/firestore/DocumentSnapshot;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "startAt"

    const/4 v1, 0x1

    .line 773
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromDocumentSnapshot(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 774
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public varargs startAt([Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 2

    const-string v0, "startAt"

    const/4 v1, 0x1

    .line 787
    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/Query;->boundFromFields(Ljava/lang/String;[Ljava/lang/Object;Z)Lcom/google/firebase/firestore/core/Bound;

    move-result-object p1

    .line 788
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->startAt(Lcom/google/firebase/firestore/core/Bound;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;
    .locals 2

    .line 401
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->parseFilter(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/core/Filter;

    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/google/firebase/firestore/core/Filter;->getFilters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 406
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/firebase/firestore/Query;->validateNewFilter(Lcom/google/firebase/firestore/core/Filter;)V

    .line 407
    new-instance v0, Lcom/google/firebase/firestore/Query;

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->query:Lcom/google/firebase/firestore/core/Query;

    invoke-virtual {v1, p1}, Lcom/google/firebase/firestore/core/Query;->filter(Lcom/google/firebase/firestore/core/Filter;)Lcom/google/firebase/firestore/core/Query;

    move-result-object p1

    iget-object v1, p0, Lcom/google/firebase/firestore/Query;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, p1, v1}, Lcom/google/firebase/firestore/Query;-><init>(Lcom/google/firebase/firestore/core/Query;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public whereArrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 280
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContains(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereArrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 263
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContains(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereArrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 316
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContainsAny(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereArrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 298
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->arrayContainsAny(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 110
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->equalTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 97
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->equalTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 220
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 207
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 246
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 233
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->greaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereIn(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 348
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->inArray(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereIn(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 332
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->inArray(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 168
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThan(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 155
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 194
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThanOrEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 181
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->lessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereNotEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 142
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notEqualTo(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Query;
    .locals 0

    .line 126
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereNotIn(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 390
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notInArray(Lcom/google/firebase/firestore/FieldPath;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method

.method public whereNotIn(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Query;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/firebase/firestore/Query;"
        }
    .end annotation

    .line 369
    invoke-static {p1, p2}, Lcom/google/firebase/firestore/Filter;->notInArray(Ljava/lang/String;Ljava/util/List;)Lcom/google/firebase/firestore/Filter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Query;->where(Lcom/google/firebase/firestore/Filter;)Lcom/google/firebase/firestore/Query;

    move-result-object p1

    return-object p1
.end method
