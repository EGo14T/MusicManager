package pojo;

import java.util.List;

/**
 * Create by EGo1ST on 2019/4/27.
 * 说明：利用DataGrid返回Json数据
 */
public class EasyGrid {
    private  int total;
    private List<?>rows;

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }
}
