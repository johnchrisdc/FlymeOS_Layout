.class public Lcom/android/systemui/statusbar/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconMerger"


# instance fields
.field private mIconSize:I

.field private mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

.field private mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v1, 0x0

    const v2, 0x7f020013

    invoke-direct {v0, v1, v2, v4}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    .line 40
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    const-string v1, "more"

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    iput-boolean v4, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method


# virtual methods
.method public addView(Lcom/android/systemui/statusbar/StatusBarIconView;I)V
    .locals 3
    .parameter "v"
    .parameter "index"

    .prologue
    .line 47
    if-nez p2, :cond_0

    .line 48
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempt to put view before the more view: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    iget v2, p0, Lcom/android/systemui/statusbar/IconMerger;->mIconSize:I

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 55
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 57
    sub-int v14, p4, p2

    .line 58
    .local v14, maxWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/IconMerger;->getChildCount()I

    move-result v4

    .line 62
    .local v4, N:I
    const/4 v12, -0x1

    .line 63
    .local v12, fitRight:I
    add-int/lit8 v13, v4, -0x1

    .local v13, i:I
    :goto_0
    if-gez v13, :cond_1

    .line 72
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 73
    .local v15, moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    const/4 v11, -0x1

    .line 74
    .local v11, fitLeft:I
    const/16 v19, -0x1

    .line 75
    .local v19, startIndex:I
    const/4 v13, 0x0

    :goto_2
    if-lt v13, v4, :cond_3

    .line 86
    :goto_3
    if-eqz v15, :cond_0

    if-gez v19, :cond_6

    .line 137
    :cond_0
    :goto_4
    return-void

    .line 64
    .end local v11           #fitLeft:I
    .end local v15           #moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .end local v19           #startIndex:I
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 65
    .local v7, child:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 66
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v12

    .line 67
    goto :goto_1

    .line 63
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 76
    .end local v7           #child:Landroid/view/View;
    .restart local v11       #fitLeft:I
    .restart local v15       #moreView:Lcom/android/systemui/statusbar/StatusBarIconView;
    .restart local v19       #startIndex:I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 77
    .restart local v7       #child:Landroid/view/View;
    if-ne v7, v15, :cond_5

    .line 78
    add-int/lit8 v19, v13, 0x1

    .line 75
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 80
    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    .line 81
    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v11

    .line 82
    goto :goto_3

    .line 96
    .end local v7           #child:Landroid/view/View;
    :cond_6
    const/4 v5, 0x0

    .line 97
    .local v5, adjust:I
    sub-int v20, v12, v11

    move/from16 v0, v20

    if-gt v0, v14, :cond_7

    .line 98
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLeft()I

    move-result v20

    sub-int v5, v11, v20

    .line 99
    sub-int/2addr v11, v5

    .line 100
    sub-int/2addr v12, v5

    .line 101
    const/16 v20, 0x0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v15, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 103
    :cond_7
    sub-int v10, v12, p4

    .line 104
    .local v10, extra:I
    const/16 v18, -0x1

    .line 106
    .local v18, shift:I
    add-int v20, v11, v10

    add-int v6, v20, v5

    .line 107
    .local v6, breakingPoint:I
    const/16 v17, 0x0

    .line 108
    .local v17, number:I
    move/from16 v13, v19

    :goto_5
    if-lt v13, v4, :cond_8

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v20, v0

    move/from16 v0, v17

    move-object/from16 v1, v20

    iput v0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreView:Lcom/android/systemui/statusbar/StatusBarIconView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/IconMerger;->mMoreIcon:Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    goto/16 :goto_4

    .line 109
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 110
    .local v7, child:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getVisibility()I

    move-result v20

    const/16 v21, 0x8

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_9

    .line 111
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getLeft()I

    move-result v8

    .line 112
    .local v8, childLeft:I
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getRight()I

    move-result v9

    .line 113
    .local v9, childRight:I
    if-ge v8, v6, :cond_b

    .line 115
    const/16 v20, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v23

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    .line 116
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/statusbar/StatusBarIcon;->number:I

    move/from16 v16, v0

    .line 117
    .local v16, n:I
    if-nez v16, :cond_a

    .line 118
    add-int/lit8 v17, v17, 0x1

    .line 108
    .end local v8           #childLeft:I
    .end local v9           #childRight:I
    .end local v16           #n:I
    :cond_9
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 119
    .restart local v8       #childLeft:I
    .restart local v9       #childRight:I
    .restart local v16       #n:I
    :cond_a
    if-lez v16, :cond_9

    .line 120
    add-int v17, v17, v16

    goto :goto_6

    .line 124
    .end local v16           #n:I
    :cond_b
    if-gez v18, :cond_c

    .line 125
    sub-int v18, v8, v11

    .line 128
    :cond_c
    sub-int v20, v8, v18

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTop()I

    move-result v21

    .line 129
    sub-int v22, v9, v18

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getBottom()I

    move-result v23

    .line 128
    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;->layout(IIII)V

    goto :goto_6
.end method
