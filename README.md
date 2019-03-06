# SKPageController
商城顶部标题滑动切换页面

A very useful father-son controller small frame.

## Language

[![Objective-C](https://camo.githubusercontent.com/5ced13177a4637802b3cad1562aa4fbb8633e751/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c616e67756167652d4f626a6563746976652d432e737667)](https://camo.githubusercontent.com/5ced13177a4637802b3cad1562aa4fbb8633e751/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f6c616e67756167652d4f626a6563746976652d432e737667)

## Requirements

- Xcode 8+

## Usage

- You can do that.

```
#pragma mark - LazyLoad
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
//    self.selectIndex = 3; //default option
}

#pragma mark - LifeCyle
- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setUpAllChildViewController];
    
    [self setUpDisplayStyle:^(UIColor *__autoreleasing *titleScrollViewBgColor, UIColor *__autoreleasing *norColor, UIColor *__autoreleasing *selColor, UIColor *__autoreleasing *proColor, UIFont *__autoreleasing *titleFont, CGFloat *titleButtonWidth, BOOL *isShowPregressView, BOOL *isOpenStretch, BOOL *isOpenShade) {
        *titleScrollViewBgColor = [UIColor whiteColor]; //View background color
        *norColor = [UIColor darkGrayColor];            //Unselected color (the font color is black by default)
        *selColor = [UIColor orangeColor];              //Highlight the color (the font color is red by default)
        *proColor = [UIColor purpleColor];              //Scrollbar color (by default the color of the title is selected)
        *titleFont = [UIFont systemFontOfSize:16];      //FontSize (default fontSize is 15)
        
        *titleButtonWidth = 100;                        //Width of the title button (with default)
        
        /*
         The following BOOL values are NO.
         */
        *isShowPregressView = YES;                      //Whether to open the lower Pregress indicator under the heading.器
        *isOpenStretch = YES;                           //Whether to open indicator stretch effect.
        *isOpenShade = YES;                             //whether to open the font gradient.
    }];
    
    
    
//    [self setUpTitleScale:^(CGFloat *titleScale) { //The titleScale range is between 0 and 1 <0 or > 1, and the default is not resized by default. TitleScale opens the zoom, and the default is closed.
//        *titleScale = 0.1;
//    }];
//
//    [self setUpProgressAttribute:^(CGFloat *progressLength, CGFloat *progressHeight, CGFloat *bottomDistance) {//ProgressLength sets the length of the bottom progress indicator, with the default value of 56 progressHeight default height of the button's width (and no greater than 10)
//        *progressLength = 40;
//        *progressHeight = 5;
//    }];
    
//    [self setUpTopTitleViewAttribute:^(CGFloat *topDistance, CGFloat *titleViewHeight) {
//        *topDistance = 200;
//    }];
}

#pragma mark - Add all childControllers.
- (void)setUpAllChildViewController
{
    NSArray *titles = @[@"text01",@"text02",@"text03",@"text04",@"text05"];
    for (NSInteger i = 0; i < titles.count; i++) {
        UIViewController *vc = [UIViewController new];
        vc.title = titles[i];
        vc.view.backgroundColor = RandColor; //Random color
        [self addChildViewController:vc];
    }
}
```



## Installation

#### Manually:

- Drag all source files(`SKPageController`) under folder Extension to your project.
- Import the header(`SKPageKit.h`) file in the AppDelegate.
- A method is called

#### CocoaPods:

- Installation with CocoaPods：pod `SKPageController`

#### Swift version:

- Waiting for development

## Agreement

- `SKPageController` licensed under the MIT license is used. Refer to [LICENSE] (<https://opensource.org/licenses/MIT>) for more information.
