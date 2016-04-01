<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="{{ url('static', filename='csvCommon.css') }}" />
    <link rel="stylesheet" type="text/css" href="{{ url('static', filename='ack_post_account.css') }}" />
  </head>

  <body>
    <div class="container">

      %if chgroupList:
      <h2>Secondary Groups Modified</h2>
      <ul>
	%for user in chgroupList:
	%for secondaryGroup in newSecondaryGroupList:
	<li>{{user}}   -->   {{secondaryGroup}}</li>
	%end		     
      </ul>
      %end

      %if chgroupDict:
      <h2>Group Modified:</h2>
      <ul>
	%for user, group in chgroupDict.iteritems():
	<li>{{user}}   -->   {{group}}</li>
	%end		     
      </ul>
      %end

      %if ackList:
      <h2>Acknowledged:</h2>
      <ul>
	%for user in ackList:
	<li>{{user}}</li>
	%end
      </ul>
      %end

      %if nackList:
      <h2>Denied:</h2>
      <ul>
	%for user in nackList:
	<li>{{user}}</li>
	%end
      </ul>
      %end
		       
    </div>
  </body>
</html>
