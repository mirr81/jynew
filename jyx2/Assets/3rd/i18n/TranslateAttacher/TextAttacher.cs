/*
 * 金庸群侠传3D重制版
 * https://github.com/jynew/jynew
 *
 * 这是本开源项目文件头，所有代码均使用MIT协议。
 * 但游戏内资源和第三方插件、dll等请仔细阅读LICENSE相关授权协议文档。
 *
 * 金庸老先生千古！
 *
 * 本文件作者：东方怂天(EasternDay)
 */

using System;
using i18n.Ext;
using i18n.TranslatorDef;
using UnityEngine;
using UnityEngine.UI;

namespace i18n.TranslateAttacher
{
    /// <summary>
    /// TextAttacher는 Text 구성 요소와 연결된 번역 중개 구성 요소입니다.
    /// Translator의 Text 구성 요소 번역 작업은 Text 구성 요소에 미리 이 구성 요소를 추가해야만 더 적은 자원 낭비로 번역 경험을 얻을 수 있습니다.
    /// </summary>
    [RequireComponent(typeof(Text))]
    public class TextAttacher : BaseAttacher
    {
        /// <summary>
        /// 이 스크립트와 연결된 Text 구성 요소
        /// 이 필드를 추가하는 이유는 구성 요소를 쉽게 구할 수 있고 공간을 사용하여 시간을 바꿀 수 있기 때문입니다.
        /// </summary>
        /// <returns>현재 스크립트에 바인딩된 Text 구성 요소</returns>
        private Text TextScript => this.gameObject.GetComponent<Text>();

        /// <summary>
        /// 구성 요소가 활성화되지 않은 상태에서 활성화된 상태로 트리거됨
        /// </summary>
        private void OnEnable()
        {
            Refresh();
        }

        public override void Refresh()
        {
            //번역 내용 새로 고침
            TextScript.text = TextScript.text.GetContent(GetToken());
        }

        public override string GetToken()
        {
            //토큰 정보 반환
            return $"来自于{transform.GetPath()}的{nameof(TextAttacher)}组件";
        }
    }
}