// Copyright Epic Games, Inc. All Rights Reserved.

#include "TestAppGameMode.h"
#include "TestAppCharacter.h"
#include "UObject/ConstructorHelpers.h"

ATestAppGameMode::ATestAppGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
