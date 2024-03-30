using Sirenix.OdinInspector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Jyx2.InputCore
{
    public enum Jyx2PlayerAction
    {
        [LabelText("X축 이동")]
        MoveHorizontal = 0,
        
        [LabelText("Y축 이동")]
        MoveVertical = 1,
        
        [LabelText("상호작용 버튼1")]
        Interact1 = 2,

        [LabelText("상호작용 버튼2")]
        Interact2 = 16,  //新增的所以id排到UI_Bag后面去了

        [LabelText("UI 수평 이동")]
        UIHorizontal = 3,

        [LabelText("UI 수직 이동")]
        UIVertical = 4,

        [LabelText("UI 확인")]
        UIConfirm = 5,

        [LabelText("UI 취소")]
        UICancel = 6,

        [LabelText("UI 종료")]
        UIClose = 7,

        [LabelText("UI 왼쪽 옵션 전환")]
        UISwitchLeft = 8,

        [LabelText("UI 오른쪽 옵션 전환")]
        UISwitchRight = 9,

        [LabelText("특수 UI 확인 YES")]
        UI_Yes = 10,

        [LabelText("특수 UI 취소 NO")]
        UI_No = 11,

        [LabelText("시스템 메뉴 열기")]
        UI_SystemMenu = 13,

        [LabelText("인물 속성 열기")]
        UI_Xiake = 14,

        [LabelText("배낭 열기")]
        UI_Bag = 15,

        [LabelText("좌회전")]
        RotateLeft = 17,

        [LabelText("우회전")]
        RotateRight = 18,

        [LabelText("카메라 수평 이동")]
        CameraMoveX = 19,


        [LabelText("카메라 수직 이동")]
        CameraMoveY = 20,
    }
    
    public class Jyx2ActionConst
    {
        public const int MoveHorizontal = (int)Jyx2PlayerAction.MoveHorizontal;
        public const int MoveVertical = (int)Jyx2PlayerAction.MoveVertical;
        public const int Interact1 = (int)Jyx2PlayerAction.Interact1;
        public const int Interact2 = (int)Jyx2PlayerAction.Interact2;
        public const int UIHorizontal = (int)Jyx2PlayerAction.UIHorizontal;
        public const int UIVertical = (int)Jyx2PlayerAction.UIVertical;
        public const int UIConfirm = (int)Jyx2PlayerAction.UIConfirm;
        public const int UICancel = (int)Jyx2PlayerAction.UICancel;
        public const int UIClose = (int)Jyx2PlayerAction.UIClose;
        public const int UISwitchLeft = (int)Jyx2PlayerAction.UISwitchLeft;
        public const int UISwitchRight = (int)Jyx2PlayerAction.UISwitchRight;
        public const int UI_Yes = (int)Jyx2PlayerAction.UI_Yes;
        public const int UI_No = (int)Jyx2PlayerAction.UI_No;
        public const int UI_SystemMenu = (int)Jyx2PlayerAction.UI_SystemMenu;
        public const int UI_Xiake = (int)Jyx2PlayerAction.UI_Xiake;
        public const int UI_Bag = (int)Jyx2PlayerAction.UI_Bag;
        public const int RotateLeft = (int)Jyx2PlayerAction.RotateLeft;
        public const int RotateRight = (int)Jyx2PlayerAction.RotateRight;
        public const int CameraMoveX = (int)Jyx2PlayerAction.CameraMoveX;
        public const int CameraMoveY = (int)Jyx2PlayerAction.CameraMoveY;
    }
}
