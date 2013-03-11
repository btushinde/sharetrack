app = angular.module("Sharetrack", ["ngResource", "ui"])

app.factory "Track", ["$resource", ($resource) ->
  $resource("/tracks/:id", {id: "@_id"}, {update: {method: "PUT"}})
]

@TrackCtrl = ["$scope", "Track", ($scope, Track) ->
  $scope.tracks = Track.query()
  $scope.newTrack = {}

  $scope.log = (arg) ->
   console.log(arg);

  $scope.alert = (arg) ->
   alert(arg)

  $scope.addTrack = ->
   track = Track.save($scope.newTrack)
   $scope.tracks.push $scope.newTrack
   $scope.newTrack = {}

  $scope.removeTrack = (track) ->
   $scope.tracks = _.filter($scope.tracks, (t) ->
    t._id != track._id
   )
   track.$delete()
]
