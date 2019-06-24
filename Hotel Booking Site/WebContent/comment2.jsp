<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>

<div class="comments-app" ng-app="commentsApp" ng-controller="CommentsController as cmntCtrl">

  <!-- From -->
  <div class="comment-form">
    <!-- Comment Avatar -->
    <div class="comment-avatar">
      <img src="http://lorempixel.com/200/200/people">
    </div>

    <form class="form" name="form" ng-submit="form.$valid && cmntCtrl.addComment()" novalidate>
      <div class="form-row">
        <textarea
                  class="input"
                  ng-model="cmntCtrl.comment.text"
                  placeholder="Add comment..."
                  required></textarea>
      </div>

      <div class="form-row">
        <input
               class="input"
               ng-class="{ disabled: cmntCtrl.comment.anonymous }"
               ng-disabled="cmntCtrl.comment.anonymous"
               ng-model="cmntCtrl.comment.author"
               ng-required="!cmntCtrl.comment.anonymous"
               placeholder="Email"
               type="email">
      </div>

      <div class="form-row text-right">
        <input
               id="comment-anonymous"
               ng-change="cmntCtrl.anonymousChanged()"
               ng-model="cmntCtrl.comment.anonymous"
               type="checkbox">
        <label for="comment-anonymous">Anonymous</label>
      </div>

      <div class="form-row">
        <input type="submit" value="Add Comment">
      </div>
    </form>
  </div>

  <!-- Comments List -->
  <div class="comments">
    <!-- Comment -->
    <div class="comment" ng-repeat="comment in cmntCtrl.comments | orderBy: '-date'">
      <!-- Comment Avatar -->
      <div class="comment-avatar">
        <img ng-src="{{ comment.avatarSrc }}">
      </div>

      <!-- Comment Box -->
      <div class="comment-box">
        <div class="comment-text">{{ comment.text }}</div>
        <div class="comment-footer">
          <div class="comment-info">
            <span class="comment-author">
              <em ng-if="comment.anonymous">Anonymous</em>
              <a ng-if="!comment.anonymous" href="{{ comment.author }}">{{ comment.author }}</a>
            </span>
            <span class="comment-date">{{ comment.date | date: 'medium' }}</span>
          </div>

          <div class="comment-actions">
            <a href="#">Reply</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Comment - Dummy -->
    <div class="comment">
      <!-- Comment Avatar -->
      <div class="comment-avatar">
        <img src="http://gravatar.com/avatar/412c0b0ec99008245d902e6ed0b264ee?s=80">
      </div>

      <!-- Comment Box -->
      <div class="comment-box">
        <div class="comment-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iusto temporibus iste nostrum dolorem natus recusandae incidunt voluptatum.</div>
        <div class="comment-footer">
          <div class="comment-info">
            <span class="comment-author">
              <a href="mailto:sexar@pagelab.io">Sexar</a>
            </span>
            <span class="comment-date">Feb 2, 2013 11:32:04 PM</span>
          </div>

          <div class="comment-actions">
            <a href="#">Reply</a>
          </div>
        </div>
      </div>
    </div>

    <!-- Comment - Dummy -->
    <div class="comment">
      <!-- Comment Avatar -->
      <div class="comment-avatar">
        <img src="http://lorempixel.com/200/200/people">
      </div>

      <!-- Comment Box -->
      <div class="comment-box">
        <div class="comment-text">Eligendi voluptatum ducimus architecto tempore, quaerat explicabo veniam fuga corporis totam reprehenderit quasi sapiente modi tempora at perspiciatis mollitia, dolores voluptate. Cumque, corrupti?</div>
        <div class="comment-footer">
          <div class="comment-info">
            <span class="comment-author">
              <a href="mailto:ximme13@somedomain.io">Ximme</a>
            </span>
            <span class="comment-date">Jan 31, 1986 11:32:04 PM</span>
          </div>

          <div class="comment-actions">
            <a href="#">Reply</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

</body>
</html>