<%namespace name="blocks" file="blocks.mako" /><table class="table table-striped table-hover ladder" id="ladder">
        <thead>
            <tr>
              <th>Pos</th>
              <th>Player</th>
              <th>For</th>
              <th>Against</th>
              <th>Games</th>
              <th>Wins</th>
              <th>Losses</th>
              <th>GD</th>
              <th>Overrated</th>
              <th class="headerSortUp">Skill</th>
              <th>Trend</th>
            </tr>
        </thead>
        <tbody>
<% rank = 0 %>
% for player in ladder.getPlayers():
  % if player.isActive():
    ${blocks.render("ladderEntry", player=player, index=rank)}
    <% rank += 1 %>
  % else:
    ${blocks.render("ladderEntry", player=player, index=-1)}
  % endif
% endfor
          </tbody>
        </table>
        <div class="controls form">
          <button class="button_active form-control" onclick="$('.inactive').show(); $('.button_active').hide();">Show inactive</button>
          <button class="form-control inactive" onclick="$('.inactive').hide(); $('.button_active').show();">Hide inactive</button>
        </div>
        <script type="text/javascript">
        $("#ladder").tablesorter({'headers': { 10: { 'sorter': false}}}); 
        </script>