app = angular.module("Sharetrack", ["ngResource"])

app.factory "Track", ["$resource", ($resource) ->
  $resource("/tracks/:id", {id: "@id"}, {update: {method: "PUT"}})
]

@TrackCtrl = ["$scope", "Track", ($scope, Track) ->
  $scope.tracks = Track.query()
  $scope.newTrack = {}

  $scope.addTrack = ->
   track = Track.save($scope.newTrack)
   $scope.tracks.push $scope.newTrack
   $scope.newTrack = {}
]
