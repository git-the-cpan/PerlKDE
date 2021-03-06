#include <qscrollview.h>

suicidal virtual class QScrollView : virtual QFrame {
    enum ResizePolicy { Default, Manual, AutoOne };
    enum ScrollBarMode { Auto, AlwaysOff, AlwaysOn };
    QScrollView(QWidget * = 0, const char * = 0, WFlags = 0);
    virtual ~QScrollView();
    void addChild(QWidget *);
    virtual void addChild(QWidget *, int, int);
    void center(int, int) slot;
    void center(int, int, float, float) slot;
    bool childIsVisible(QWidget *);
    int childX(QWidget *);
    int childY(QWidget *);
    int contentsHeight() const;
    int contentsWidth() const;
    int contentsX() const;
    int contentsY() const;
    QWidget *cornerWidget() const;
    void ensureVisible(int, int) slot;
    void ensureVisible(int, int, int, int) slot;
    QScrollBar *horizontalScrollBar();
    QScrollView::ScrollBarMode hScrollBarMode() const;
    virtual void moveChild(QWidget *, int, int);
    void removeChild(QWidget *);
    void resize(const QSize &);
    virtual void resize(int, int);
    virtual void resizeContents(int, int) slot;
    QScrollView::ResizePolicy resizePolicy() const;
    void scrollBy(int, int) slot;
    void setContentsPos(int, int) slot;
    virtual void setCornerWidget(QWidget *);
    virtual void setHScrollBarMode(QScrollView::ScrollBarMode);
    virtual void setResizePolicy(QScrollView::ResizePolicy);
    virtual void setVScrollBarMode(QScrollView::ScrollBarMode);
    virtual void show();
    void showChild(QWidget *, bool = TRUE);
    void updateScrollBars();
    QScrollBar *verticalScrollBar();
    QWidget *viewport();
    QScrollView::ScrollBarMode vScrollBarMode() const;
protected:
    int bottomMargin() const;
    void contentsMoving(int, int) signal;
    virtual void drawContentsOffset(QPainter *, int, int, int, int, int, int);
    virtual bool eventFilter(QObject *, QEvent *);
    virtual bool focusNextPrevChild(bool);
    virtual void frameChanged();
    int leftMargin() const;
    virtual void resizeEvent(QResizeEvent *);
    int rightMargin() const;
    void setMargins(int, int, int, int);
    int topMargin() const;
    virtual void viewportMouseDoubleClickEvent(QMouseEvent* );
    virtual void viewportMouseMoveEvent(QMouseEvent *);
    virtual void viewportMousePressEvent(QMouseEvent *);
    virtual void viewportMouseReleaseEvent(QMouseEvent *);
    virtual void viewportPaintEvent(QPaintEvent *);
} Qt::ScrollView;
