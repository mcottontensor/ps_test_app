// Copyright Epic Games, Inc. All Rights Reserved.

#include "PSTestStreamerGameMode.h"
#include "PSTestStreamerCharacter.h"
#include "UObject/ConstructorHelpers.h"

APSTestStreamerGameMode::APSTestStreamerGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
