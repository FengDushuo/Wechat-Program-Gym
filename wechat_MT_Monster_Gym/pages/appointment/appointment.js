// appointment.js
var app = getApp()
Page({

  /**
   * 页面的初始数据
   */
  data: {
      coaches:[],
      starCoaches: [],      
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    console.log('appoint onload');
    const that = this;
    wx.setNavigationBarTitle({
      title: '预约教练',
    });
    wx.request({
      url: 'http://127.0.0.1:8000/appointment_coaches',
      success: function (res) {
        var coach = [];
        for (var i = 0; i < res.data.data.length; i++) {
          if (res.data.data[i].type == "coach") {
            coach.push(res.data.data[i]); 
          }
        }
        that.setData({
          coaches: coach
        });
      }
    });
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
  
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
  
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
  
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
  
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
  
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
  
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    return {
      title: "MT怪兽健身教练"
    }
  },
})