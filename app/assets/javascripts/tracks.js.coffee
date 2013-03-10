# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/



@TrackCtrl = ($scope) ->
  $scope.newTrack = {}

  $scope.tracks = [
    {title: "Track1", url: "http://"}
    {title: "track2", url: "http://"}
    {title: "tRACk ThreE", url: "htt://"}
  ]


  $scope.addTrack = () ->
  	$scope.tracks.push $scope.newTrack
  	$scope.newTrack = {}
  	console.log $scope.newTrack

