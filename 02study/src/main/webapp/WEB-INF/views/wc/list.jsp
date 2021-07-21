<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="context" value="${pageContext.request.contextPath}"/>
<title>Insert title here</title>
 <script src="https://d3js.org/d3.v3.min.js"></script>
</head>
<body>
<div id="cloud"></div>
	<script type="text/javascript">
	
	$(document).ready(function(){
			var url  = "";
		    var weight = 1, // 글자크기 가중치
		      width = 900,
		      height = 500;

		    var fill = d3.scale.category20();
		    var dataList = [];
		    
		    /*
		    $.getJSON(url, function (data) {
		      for (var i = 0; i < data.length; i++) {
		        dataList.push({
		          text: data[i].text,
		          size: (data[i].size * weight)
		        });
		      }
		      drawChart(dataList);
		    });
		    */
		    
		    
		    
		    var dataList = [
		        {
		            text: "와이즈넛",
		            size: 89
		        },
		        {
		            text: "주식회사 와이즈넛",
		            size: 128
		        },
		        {
		            text: "공공개발",
		            size: 10
		        },
		        {
		            text: "공개",
		            size: 19
		        },
		        {
		            text: "공공사업본부",
		            size: 57
		        },
		        {
		            text: "공공",
		            size: 4
		        },
		        {
		            text: "아영",
		            size: 8
		        },
		        {
		            text: "조아영",
		            size: 58
		        },
		        {
		            text: "외근",
		            size: 8
		        },
		        {
		            text: "출장",
		            size: 5
		        },
		        {
		            text: "내근",
		            size: 5
		        },
		        {
		            text: "구내식당",
		            size: 56
		        },   
		        {
		            text: "카페",
		            size: 35
		        },
		        {
		            text: "판교테크노밸리",
		            size: 88
		        },
		        {
		            text: "판교",
		            size: 15
		        },
		        {
		            text: "챗봇",
		            size: 84
		        },
		        {
		            text: "빅데이터",
		            size: 48
		        },
		        {
		            text: "텍스트마이닝",
		            size: 11
		        },
		        {
		            text: "아이챗",
		            size: 8
		        },
		        {
		            text: "그외",
		            size: 2
		        },
		        {
		            text: "챗봇",
		            size: 54
		        },
		        {
		            text: "한국",
		            size: 62
		        },
		        {
		            text: "sf-1",
		            size: 23
		        },
		        {
		            text: "tea",
		            size: 53
		        },
		        {
		            text: "신입",
		            size: 24
		        }
		    ];
		    
		    
		    drawChart(dataList);
		    
		    function drawChart(data) {
		      d3.layout.cloud().size([width, height]).words(data)
		        //.rotate(function() { return ~~(Math.random() * 2) * 90; })
		        .rotate(0)
		        .font("Impact")
		        .fontSize(function (d) {
		          return d.size;
		        })
		        .on("end", draw)
		        .start();

		      function draw(words) {
		        d3.select("#cloud").append("svg")
		          .attr("width", width)
		          .attr("height", height)
		          .append("g")
		          .attr("transform", "translate(" + width / 2 + "," + height / 2 + ")")
		          .selectAll("text")
		          .data(words)
		          .enter().append("text")
		          .style("font-size", function (d) {
		            return d.size + "px";
							})
							.style("font-family", "Impact")
		          .style("fill", function (d, i) {
		            return fill(i);
		          })
		          .attr("text-anchor", "middle")
		          .attr("transform", function (d) {
		            return "translate(" + [d.x, d.y] + ")rotate(" + d.rotate + ")";
		          })
		          .text(function (d) {
		            return d.text;
		          });
		      }
		    };
	});
	</script>

</body>
</html>