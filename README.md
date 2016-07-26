# loadVIew
网络加载等延迟操作效果图<br>
![](http://a4.qpic.cn/psb?/V10OjX180eCQU7/AIeqhGryvVIAXeQwvkExVE1*emWxYAF8S3i03Tl6ZrQ!/c/dGcAAAAAAAAA&ek=1&kp=1&pt=0&bo=QAE4AkABOAICCCw!&sce=0-12-12&rf=viewer_311)<br>

    #import "GFAddLoadView.h"   // 导入头文件

    GFAddLoadView *add = [[GFAddLoadView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];  // 设置位置及大小
  
    /**
     *  设置加载图片的具体信息
     *
     *  @param float  定时源 旋转速度,时间越小越快 建议  0.0x
     *
     *  @alpha 透明度
     *
     *  @color 设置旋转的颜色
     *
     *  @lineWidth 设置宽度
     */
  
    [add timer:0.02 alpha:1 color:[UIColor greenColor] lineWidth:5];    // 修改相关属性

    [self.view addSubview:add];   //添加到视图上

三行代码搞定
