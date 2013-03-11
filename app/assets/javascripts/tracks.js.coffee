app = angular.module("Sharetrack", ["ngResource"])

app.factory "Track", ["$resource", ($resource) ->
  $resource("/tracks/:id", {id: "@id"}, {update: {method: "PUT"}})
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

  $scope.removeTrack = (id) ->
   $scope.log "remove"
   $scope.log Track.remove {id: id}

  $scope.getTrack = () ->
   $scope.log Track.get()

  $scope.getTracks = ->
   $scope.tracks

  $scope.hello = (id) ->
   console.log $scope.getTracks()
   $scope.log 'hello!'

]
