package com.entity.vo;

import com.entity.GoodsCommentbackEntity;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;

/**
 * 商品评论
 * 手机端接口返回实体辅助类
 * （主要作用去除一些不必要的字段）
 */
@TableName("goods_commentback")
public class GoodsCommentbackVO implements Serializable {
    private static final long serialVersionUID = 1L;


    /**
     * 主键
     */

    @TableField(value = "id")
    private Integer id;


    /**
     * 评论商品
     */

    @TableField(value = "goods_id")
    private Integer goodsId;


    /**
     * 评论人
     */

    @TableField(value = "yonghu_id")
    private Integer yonghuId;


    /**
     * 评论时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "insert_time")
    private Date insertTime;


    /**
     * 评论内容
     */

    @TableField(value = "goods_commentback_content")
    private String goodsCommentbackContent;


    /**
     * 回复内容
     */

    @TableField(value = "goods_reply_content")
    private String goodsReplyContent;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat

    @TableField(value = "create_time")
    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：评论商品
	 */
    public Integer getGoodsId() {
        return goodsId;
    }


    /**
	 * 获取：评论商品
	 */

    public void setGoodsId(Integer goodsId) {
        this.goodsId = goodsId;
    }
    /**
	 * 设置：评论人
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：评论人
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：评论时间
	 */
    public Date getInsertTime() {
        return insertTime;
    }


    /**
	 * 获取：评论时间
	 */

    public void setInsertTime(Date insertTime) {
        this.insertTime = insertTime;
    }
    /**
	 * 设置：评论内容
	 */
    public String getGoodsCommentbackContent() {
        return goodsCommentbackContent;
    }


    /**
	 * 获取：评论内容
	 */

    public void setGoodsCommentbackContent(String goodsCommentbackContent) {
        this.goodsCommentbackContent = goodsCommentbackContent;
    }
    /**
	 * 设置：回复内容
	 */
    public String getGoodsReplyContent() {
        return goodsReplyContent;
    }


    /**
	 * 获取：回复内容
	 */

    public void setGoodsReplyContent(String goodsReplyContent) {
        this.goodsReplyContent = goodsReplyContent;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

}
