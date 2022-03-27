<template>
  <div class="p-14">
    <!-- <ol class="numberlist">
      <li>An numbered list</li>
      <li>Containing

        <ul class="sqaredotlist">
          <li>A dotted list</li>
          <li>Containing

            <ol class="romanlist">
              <li>A roman numeral list</li>
              <li>And some items</li>
              <li>Like this</li>
            </ol>
          </li>
          <li>And some items</li>
          <li>Like this</li>
        </ul>
      </li>
      <li>And some items</li>
      <li>Like this</li>
    </ol> -->
    <ol>List1
    <li>List1 item1</li>
    <li>List1 item2</li>
    
      <!-- Second level -->
      <ul>List2
        <li>List2 item1</li>
        <li>List2 item2</li>
        <li>List2 item3</li>
      </ul>
    <li>List1 item3</li>
    <li>List1 item4</li>   
  </ol>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
  ol.numberlist {
    list-style-type: decimal;
  }

  ul.sqaredotlist {
    list-style-type: square;
  }

  ol.romanlist {
    list-style-type: lower-roman;
  }
</style>