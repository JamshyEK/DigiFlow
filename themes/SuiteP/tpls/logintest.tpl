{*
/**
 *
 * SugarCRM Community Edition is a customer relationship management program developed by
 * SugarCRM, Inc. Copyright (C) 2004-2013 SugarCRM Inc.
 *
 * SuiteCRM is an extension to SugarCRM Community Edition developed by SalesAgility Ltd.
 * Copyright (C) 2011 - 2018 SalesAgility Ltd.
 *
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU Affero General Public License version 3 as published by the
 * Free Software Foundation with the addition of the following permission added
 * to Section 15 as permitted in Section 7(a): FOR ANY PART OF THE COVERED WORK
 * IN WHICH THE COPYRIGHT IS OWNED BY SUGARCRM, SUGARCRM DISCLAIMS THE WARRANTY
 * OF NON INFRINGEMENT OF THIRD PARTY RIGHTS.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
 * details.
 *
 * You should have received a copy of the GNU Affero General Public License along with
 * this program; if not, see http://www.gnu.org/licenses or write to the Free
 * Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301 USA.
 *
 * You can contact SugarCRM, Inc. headquarters at 10050 North Wolfe Road,
 * SW2-130, Cupertino, CA 95014, USA. or at email address contact@sugarcrm.com.
 *
 * The interactive user interfaces in modified source and object code versions
 * of this program must display Appropriate Legal Notices, as required under
 * Section 5 of the GNU Affero General Public License version 3.
 *
 * In accordance with Section 7(b) of the GNU Affero General Public License version 3,
 * these Appropriate Legal Notices must retain the display of the "Powered by
 * SugarCRM" logo and "Supercharged by SuiteCRM" logo. If the display of the logos is not
 * reasonably feasible for technical reasons, the Appropriate Legal Notices must
 * display the words "Powered by SugarCRM" and "Supercharged by SuiteCRM".
 */
*}
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script type='text/javascript'>
    var LBL_LOGIN_SUBMIT = '{sugar_translate module="Users" label="LBL_LOGIN_SUBMIT"}';
    var LBL_REQUEST_SUBMIT = '{sugar_translate module="Users" label="LBL_REQUEST_SUBMIT"}';
    var LBL_SHOWOPTIONS = '{sugar_translate module="Users" label="LBL_SHOWOPTIONS"}';
    var LBL_HIDEOPTIONS = '{sugar_translate module="Users" label="LBL_HIDEOPTIONS"}';
</script>

<!-- Start login container -->



	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-more" style="background-image: url('https://picsum.photos/1000/1000');">
				</div>
				<form class="login100-form validate-form"  role="form" action="index.php" method="post" name="DetailView" id="form"
              onsubmit="return document.getElementById('cant_login').value == ''" autocomplete="off">
					<span class="login100-form-title p-b-43">
						{sugar_translate module="Users" label="LBL_LOGIN_BUTTON_LABEL"}
					</span>


        <span class="error wrap-input101" id="browser_warning" style="display:none">
            {sugar_translate label="WARN_BROWSER_VERSION_WARNING"}
        </span>
        
		<span class="error wrap-input101" id="ie_compatibility_mode_warning" style="display:none">
		{sugar_translate label="WARN_BROWSER_IE_COMPATIBILITY_MODE_WARNING"}
		</span>



            {if $LOGIN_ERROR !=''}
                <span class="error wrap-input101">{$LOGIN_ERROR}</span>
                {if $WAITING_ERROR !=''}
                    <span class="error wrap-input101">{$WAITING_ERROR}</span>
                {/if}
            {else}
                <span id='post_error' class="error"></span>
            {/if}
            <input type="hidden" name="module" value="Users">
            <input type="hidden" name="action" value="Authenticate">
            <input type="hidden" name="return_module" value="Users">
            <input type="hidden" name="return_action" value="Login">
            <input type="hidden" id="cant_login" name="cant_login" value="">
            {foreach from=$LOGIN_VARS key=key item=var}
                <input type="hidden" name="{$key}" value="{$var}">
            {/foreach}

                    {if !empty($SELECT_LANGUAGE)}
					<div class="form-group">
						<div class="row">
							<div class="col-md-7 col-xs-7 col-sm-7">
							<!--  <label >{sugar_translate module="Users" label="LBL_LANGUAGE"}:</label>-->
							</div>
							<div class="col-md-5 col-xs-5 col-sm-5">
                                    <select id="backicon" class="form-control" name='login_language' onchange="switchLanguage(this.value)">{$SELECT_LANGUAGE}</select>
								
							</div>
						</div>
                      </div>
					  {/if}

					<div class="wrap-input100 validate-input" >
						<input class="input100" type="text"  class="form-control"  required autofocus
                     id="user_name" name="user_name" value='{$LOGIN_USER_NAME}' autocomplete="off">
						<span class="focus-input100"></span>
						<span class="label-input100">{sugar_translate module="Users" 
                         label="LBL_USER_NAME"}</span>
					</div>
					
					

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password"    id="username_password" name="username_password" value='{$LOGIN_PASSWORD}' autocomplete="off">
						<span class="focus-input100"></span>
						<span class="label-input100">{sugar_translate module="Users"
                         label="LBL_PASSWORD"}</span>
					</div>



					<div class="flex-sb-m w-full p-t-3 p-b-32">
					

						<div id="forgotpasslink" style="cursor: pointer; display:{$DISPLAY_FORGOT_PASSWORD_FEATURE};"
                 onclick='toggleDisplay("forgot_password_dialog");'>
							<a href='javascript:void(0)' class="txt1">
								{sugar_translate module="Users" label="LBL_LOGIN_FORGOT_PASSWORD"}
							</a>
						</div>
					</div>
			

					<div class="container-login100-form-btn">
                   <button  title="{sugar_translate module="Users" label="LBL_LOGIN_BUTTON_TITLE"}"  name="Login"
                   value="{sugar_translate module="Users" label="LBL_LOGIN_BUTTON_LABEL"}" type="submit" class="login100-form-btn"
                   >{sugar_translate module="Users" label="LBL_LOGIN_BUTTON_LABEL"}</button>
					</div>


					
				

			
				</form>

				</div>
			</div>
		</div>

	<script src="themes\SuiteP\test\vendor\jquery\jquery-3.2.1.min.js"></script>
    <script src="themes\SuiteP\test\js\main.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>





















    
 <!--   <div class="p_login_middle">
        {if $LOGIN_ERROR_MESSAGE}
            <p align='center' class='error'>{$LOGIN_ERROR_MESSAGE}</p>
        {/if}


    <div id="loginform">
        
  
        
        <form class="form-signin passform" role="form" action="index.php" method="post" name="DetailView" id="form" name="fp_form" id="fp_form" autocomplete="off">
            <div id="forgot_password_dialog" style="display:none">
                <input type="hidden" name="entryPoint" value="GeneratePassword">
                <div id="generate_success" class='error' style="display:inline;"></div>
                <br>
                <div class="input-group">
                    {*<span class="input-group-addon logininput glyphicon glyphicon-user"></span>*}
                    <input type="text" class="form-control" size='26' id="fp_user_name" name="fp_user_name"
                           value='{$LOGIN_USER_NAME}'
                           placeholder="{sugar_translate module="Users" label="LBL_USER_NAME"}" autocomplete="off">
                </div>
                <br>
                <div class="input-group">
                    {*<span class="input-group-addon logininput glyphicon glyphicon-envelope"></span>*}
                    <input type="text" class="form-control" size='26' id="fp_user_mail" name="fp_user_mail" value=''
                           placeholder="{sugar_translate module="Users" label="LBL_EMAIL"}" autocomplete="off">
                </div>
                <br>
                {$CAPTCHA}
                <div id='wait_pwd_generation'></div>
                <input title="Email Temp Password" class="button  btn-block" type="button" style="display:inline"
                       onclick="validateAndSubmit(); return document.getElementById('cant_login').value == ''"
                       id="generate_pwd_button" name="fp_login"
                       value="{sugar_translate module="Users" label="LBL_LOGIN_SUBMIT"}" autocomplete="off">
            </div>
        </form>
        
    </div>
    </div>
    
-->
    

<!-- End login container -->



